package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.services.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(description = "This is a Controller for Users")
@RestController
@RequestMapping("/users/")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @ApiOperation(value = "This will find an user with a given combination of username and password.", notes = "The user will be given in the body.")
    @PostMapping("login")
    @ResponseStatus(HttpStatus.OK)  //checked
    public UserDTO login(@RequestBody UserDTO userDTO){
        return userService.findUsersByUsernameAndPassword(userDTO);
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

    @ApiOperation(value = "This will save or update an user.", notes = "The user will be given in the body.")
    @PostMapping("save/")
    @ResponseStatus(HttpStatus.OK)  //checked save & update
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
}
