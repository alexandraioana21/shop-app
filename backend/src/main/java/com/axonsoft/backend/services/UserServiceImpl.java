package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.User;
import com.axonsoft.backend.mappers.UserMapper;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final UserMapper userMapper;

    public UserServiceImpl(UserRepository userRepository, UserMapper userMapper) {
        this.userRepository = userRepository;
        this.userMapper = userMapper;
    }

    @Override
    public List<UserDTO> findAllUsers() {
        return userRepository.findAll().stream().map(user -> {
            UserDTO userDTO = userMapper.userToUserDTO(user);
            return userDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public List<UserDTO> findUsersByLastnameLike(String lastname) {
        return userRepository.findAllByLastnameLike("%" + lastname + "%").stream().map(user -> {
            UserDTO userDTO = userMapper.userToUserDTO(user);
            return userDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public UserDTO saveUser(UserDTO userDTO) {
        User savedUser = userRepository.save(userMapper.userDTOToUser(userDTO));
        return userMapper.userToUserDTO(savedUser);
    }

    @Override
    public void deleteUser(UserDTO userDTO) {
        userRepository.delete(userMapper.userDTOToUser(userDTO));
    }

    @Override
    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public UserDTO findUserById(Long id) {
        return userMapper.userToUserDTO(userRepository.findById(id).get());
    }
}