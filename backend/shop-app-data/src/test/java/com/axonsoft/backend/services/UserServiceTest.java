package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.User;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.mappers.UserMapper;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.repositories.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @Mock
    UserRepository userRepository;

    @Mock
    UserMapper userMapper;

    @Mock
    PasswordEncoder passwordEncoder;

    @InjectMocks
    UserServiceImpl userService;

    User returnUser;

    UserDTO userDTO;

    List<User> returnUsers;

    @BeforeEach
    void setUp() {
        returnUser = User.builder().id(1L).firstname("fname").lastname("lname").username("username").password("password").build();

        returnUsers = new ArrayList<>();
        returnUsers.add(User.builder().id(2L).firstname("fname").lastname("lname").username("username").password("password").build());
        returnUsers.add(User.builder().id(3L).firstname("fname").lastname("lname").username("username").password("password").build());

        userDTO = new UserDTO();
        userDTO.setId(1L);
        userDTO.setFirstname("fname");
        userDTO.setLastname("lname");
        userDTO.setUsername("username");
        userDTO.setPassword("password");
    }

    @Test
    void findAllUsers() {

        when(userRepository.findAll()).thenReturn(returnUsers);

        List<UserDTO> userDTOs = userService.findAllUsers();

        assertNotNull(userDTOs);
        assertEquals(2, userDTOs.size());
        verify(userRepository).findAll();
    }

    @Test
    void findUsersByLastnameLike() {

        when(userRepository.findAllByLastnameLike(anyString())).thenReturn(returnUsers);

        when(userMapper.userToUserDTO(any())).thenReturn(userDTO);

        List<UserDTO> found = userService.findUsersByLastnameLike("%n%");

        assertNotNull(found);
        assertEquals(found.size(), 2);
        verify(userRepository, times(1)).findAllByLastnameLike(anyString());
    }

    @Test
    void findUsersByUsername() {

        when(userRepository.findByUsername(anyString())).thenReturn(Optional.of(returnUser));

        when(userMapper.userToUserDTO(any())).thenReturn(userDTO);

        UserDTO found = userService.findByUsername("username");

        assertNotNull(found);
        verify(userRepository, times(1)).findByUsername(anyString());
    }

    @Test
    void saveUser() {
        when(passwordEncoder.encode(anyString())).thenReturn("password");
        when(userRepository.save(any())).thenReturn(returnUser);
        when(userMapper.userToUserDTO(any())).thenReturn(userDTO);

        UserDTO savedUser = userService.saveUser(userDTO);

        assertNotNull(savedUser);

        verify(userRepository).save(any());
    }

    @Test
    void deleteUser() {
        userService.deleteUser(userMapper.userToUserDTO(returnUser));

        verify(userRepository, times(1)).delete(any());
    }

    @Test
    void deleteUserById() {
        userService.deleteUserById(returnUser.getId());

        verify(userRepository, times(1)).deleteById(any());
    }

    @Test
    void findUserById() {
        when(userRepository.findById(anyLong())).thenReturn(Optional.of(returnUser));

        when(userMapper.userToUserDTO(any())).thenReturn(userDTO);

        UserDTO found = userService.findUserById(1L);

        assertNotNull(found);
        verify(userRepository).findById(anyLong());
    }

    @Test
    void findUserByIdNotFound() {
        when(userRepository.findById(anyLong())).thenReturn(Optional.empty());

        assertThrows(NotFoundException.class, () -> userService.findUserById(13L));
    }

    @Test
    void findUsersByUsernameAndPassword() {
        when(passwordEncoder.matches(anyString(), anyString())).thenReturn(true);
        when(userRepository.findByUsername(anyString())).thenReturn(Optional.of(returnUser));

        when(userMapper.userToUserDTO(any())).thenReturn(userDTO);

        UserDTO found = userService.findUsersByUsernameAndPassword(userDTO.getUsername(), userDTO.getPassword());

        assertNotNull(found);
        verify(userRepository).findByUsername(anyString());
    }
}