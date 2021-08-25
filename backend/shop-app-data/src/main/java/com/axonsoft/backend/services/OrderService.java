package com.axonsoft.backend.services;

import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.model.UserDTO;

import java.time.LocalDate;
import java.util.List;

public interface OrderService {

    List<OrderDTO> findAllOrders();

    List<OrderDTO> findOrdersByDate(LocalDate date);

    OrderDTO saveOrder(OrderDTO orderDTO);

    void deleteOrder(OrderDTO orderDTO);

    void deleteOrderById(Long id);

    List<OrderDTO> findOrdersByUser(UserDTO userDTO);

    OrderDTO findOrderById(Long id);
}
