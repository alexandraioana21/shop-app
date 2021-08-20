package com.axonsoft.backend.repositories;

import com.axonsoft.backend.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findAllByLastnameLike(String lastname);
}
