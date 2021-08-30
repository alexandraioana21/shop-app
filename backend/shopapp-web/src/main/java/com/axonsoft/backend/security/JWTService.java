package com.axonsoft.backend.security;

import com.axonsoft.backend.domain.Token;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.model.TokenDTO;
import com.axonsoft.backend.repositories.UserRepository;
import org.springframework.context.annotation.Primary;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
@Primary
public class JWTService implements UserDetailsService {

    private UserRepository userRepository;

    public JWTService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Token create(TokenDTO tokenDTO) {
        Token token = new Token(tokenDTO.getToken(), tokenDTO.getUsername());
        return token;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws NotFoundException {
        com.axonsoft.backend.domain.User user = userRepository.findByUsername(username).orElseThrow(NotFoundException::new);
        if (user == null) {
            throw new NotFoundException("User not found with username: " + username);
        }
        else {
            return new User(user.getUsername(),
                    user.getPassword(),
                    new ArrayList<>());
        }    }
}
