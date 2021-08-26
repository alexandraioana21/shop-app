package com.axonsoft.backend.repositories;

import com.axonsoft.backend.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;
import java.util.Optional;
@Repository
@CrossOrigin("http://localhost:4200")
public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findAllByLastnameLike(String lastname);

    Optional<User> findByUsernameAndPassword(String username, String password);

    Optional<User> findByUsername(String username);
}
