package com.axonsoft.backend.repositories;

import com.axonsoft.backend.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findAllByLastnameLike(String lastname);

    Optional<User> findByUsernameAndPassword(String username, String password);
}
