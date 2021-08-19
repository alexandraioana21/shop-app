package com.axonsoft.backend.domain;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "orders")
public class Order extends BaseEntity{

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "orders_elements", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "order_element_id"))
    private Set<OrderElement> elements = new HashSet<>();

    private LocalDate date;

    @Builder
    public Order(Long id, User user, Set<OrderElement> elements, LocalDate date) {
        super(id);
        this.user = user;
        if (elements != null)
            this.elements = elements;
        this.date = date;
    }
}
