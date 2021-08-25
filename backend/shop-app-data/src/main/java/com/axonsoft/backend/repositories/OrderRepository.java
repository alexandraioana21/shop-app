package com.axonsoft.backend.repositories;

import com.axonsoft.backend.domain.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {

    List<Order> findOrdersByDate(LocalDate date);
}
