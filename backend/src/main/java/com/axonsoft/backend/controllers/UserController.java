package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.services.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users/")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("login")
    @ResponseStatus(HttpStatus.OK)  //checked
    public UserDTO login(@RequestBody UserDTO userDTO){
        return userService.findUsersByUsernameAndPassword(userDTO);
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)  //checked
    public List<UserDTO> findAllUsers(){
        return userService.findAllUsers();
    }

    @GetMapping("findByLastname/{lastname}")
    @ResponseStatus(HttpStatus.OK)             //checked
    public List<UserDTO> findUsersByLastnameLike(@PathVariable String lastname){
        return userService.findUsersByLastnameLike(lastname);
    }

    @PostMapping("save/")
    @ResponseStatus(HttpStatus.OK)  //checked save & update
    public UserDTO saveUser(@RequestBody UserDTO userDTO){
        return userService.saveUser(userDTO);
    }

    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteUser(@RequestBody UserDTO userDTO){
        userService.deleteUser(userDTO);
    }

    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteUserById(@PathVariable Long id){
        userService.deleteUserById(id);
    }

    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public UserDTO findUserById(@PathVariable Long id){
        return userService.findUserById(id);
    }
}
