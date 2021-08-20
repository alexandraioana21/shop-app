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

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<UserDTO> findAllUsers(){
        return userService.findAllUsers();
    }

    @GetMapping("{lastname}")
    @ResponseStatus(HttpStatus.OK)
    public List<UserDTO> findUsersByLastnameLike(@PathVariable String lastname){
        return userService.findUsersByLastnameLike(lastname);
    }

    @PostMapping("save/")
    @ResponseStatus(HttpStatus.OK)
    public UserDTO saveUser(@RequestBody UserDTO userDTO){
        return userService.saveUser(userDTO);
    }

    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)
    public void deleteUser(@RequestBody UserDTO userDTO){
        userService.deleteUser(userDTO);
    }

    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteUserById(@PathVariable Long id){
        userService.deleteUserById(id);
    }

    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)
    public UserDTO findUserById(@PathVariable Long id){
        return userService.findUserById(id);
    }
}
