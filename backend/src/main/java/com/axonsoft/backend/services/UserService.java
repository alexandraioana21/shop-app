package com.axonsoft.backend.services;

import com.axonsoft.backend.model.UserDTO;

import java.util.List;

public interface UserService {

    List<UserDTO> findAllUsers();

    List<UserDTO> findUsersByLastnameLike(String lastname);

    UserDTO saveUser(UserDTO userDTO);

    void deleteUser(UserDTO userDTO);

    void deleteUserById(Long id);

    UserDTO findUserById(Long id);

    UserDTO findUsersByUsernameAndPassword(UserDTO userDTO);
}
