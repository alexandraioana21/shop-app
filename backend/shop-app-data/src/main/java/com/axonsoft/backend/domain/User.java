package com.axonsoft.backend.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User extends BaseEntity{

    private String firstname;
    private String lastname;

    @Column(unique = true)
    private String username;
    private String password;

    @Enumerated(value = EnumType.STRING)
    private Role role;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user")
    @JsonManagedReference
    private Set<Order> orders = new HashSet<>();

    @Builder
    public User(Long id, String firstname, String lastname, String username, String password, Set<Order> orders) {
        super(id);
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        if (orders != null)
            this.orders = orders;
    }

}
