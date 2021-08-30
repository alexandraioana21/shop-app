package com.axonsoft.backend.controllers;

import com.axonsoft.backend.domain.Token;
import com.axonsoft.backend.model.TokenDTO;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.security.JWTService;
import com.axonsoft.backend.security.TokenUtils;
import com.axonsoft.backend.security.model.JWTRequest;
import com.axonsoft.backend.services.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(description = "This is a Controller for Users")
@RestController
@RequestMapping("/users/")
public class UserController {

    private final UserService userService;
    private final JWTService jwtService;
    private final TokenUtils tokenUtils;
    private final AuthenticationManager authenticationManager;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, JWTService jwtService, TokenUtils tokenUtils, AuthenticationManager authenticationManager, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.jwtService = jwtService;
        this.tokenUtils = tokenUtils;
        this.authenticationManager = authenticationManager;
        this.passwordEncoder = passwordEncoder;
    }

    @ApiOperation(value = "This will return a list of all users.")
    @GetMapping
    @ResponseStatus(HttpStatus.OK)  //checked
    public List<UserDTO> findAllUsers(){
        return userService.findAllUsers();
    }

    @ApiOperation(value = "This will return a list of all users with a given lastname.", notes = "The name will be given in the path.")
    @GetMapping("findByLastname/{lastname}")
    @ResponseStatus(HttpStatus.OK)             //checked
    public List<UserDTO> findUsersByLastnameLike(@PathVariable String lastname){
        return userService.findUsersByLastnameLike(lastname);
    }

    @ApiOperation(value = "This will return a user with a given username.", notes = "The username will be given in the path.")
    @GetMapping("findByUsername/{username}")
    @ResponseStatus(HttpStatus.OK)             //checked
    public UserDTO findUsersByUsername(@PathVariable String username){
        return userService.findByUsername(username);
    }

    @ApiOperation(value = "This will save or update an user.", notes = "The user will be given in the body.")
    @PostMapping("notRestricted/save/")
    @ResponseStatus(HttpStatus.OK)  //checked save & update
    //@PreAuthorize("hasRole(T(com.axonsoft.backend.domain.Role).ADMIN.toString())")
    public UserDTO saveUser(@RequestBody UserDTO userDTO){
        return userService.saveUser(userDTO);
    }

    @ApiOperation(value = "This will delete an user.", notes = "The user will be given in the body.")
    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteUser(@RequestBody UserDTO userDTO){
        userService.deleteUser(userDTO);
    }

    @ApiOperation(value = "This will delete an user.", notes = "The id will be given in the path.")
    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteUserById(@PathVariable Long id){
        userService.deleteUserById(id);
    }

    @ApiOperation(value = "This will find an user by id.", notes = "The id will be given in the path.")
    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public UserDTO findUserById(@PathVariable Long id){
        return userService.findUserById(id);
    }

    @ApiOperation(value = "This will find an user with a given combination of username and password.", notes = "The user will be given in the body.")
    @PostMapping("notRestricted/login")
    @ResponseStatus(HttpStatus.OK)
    public UserDTO generateToken(@RequestBody JWTRequest jwtRequest) throws Exception {
        login(jwtRequest.getUsername(), jwtRequest.getPassword());

        final UserDetails userDetails = jwtService.loadUserByUsername(jwtRequest.getUsername());

        final String generatedToken = tokenUtils.generateToken(userDetails);
        Token token = jwtService.create(new TokenDTO(generatedToken, userDetails.getUsername()));

        UserDTO loggedUser = userService.findUsersByUsernameAndPassword(jwtRequest.getUsername(), jwtRequest.getPassword());

        if(loggedUser != null) {
            loggedUser.setPassword(null);
            loggedUser.setToken(token.getToken());
        }
        return loggedUser;
    }

    private void login(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
}
