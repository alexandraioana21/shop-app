package com.axonsoft.backend.mappers;

import com.axonsoft.backend.domain.User;
import com.axonsoft.backend.model.UserDTO;
import org.mapstruct.Mapper;

@Mapper
public interface UserMapper {

    UserDTO userToUserDTO(User user);

    User userDTOToUser(UserDTO userDTO);
}
