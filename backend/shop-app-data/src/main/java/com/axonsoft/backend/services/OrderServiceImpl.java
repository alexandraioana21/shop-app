package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.Order;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.mappers.OrderMapper;
import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.repositories.OrderRepository;
import com.axonsoft.backend.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;
    private final OrderMapper orderMapper;
    private final UserRepository userRepository;

    public OrderServiceImpl(OrderRepository orderRepository, OrderMapper orderMapper, UserRepository userRepository) {
        this.orderRepository = orderRepository;
        this.orderMapper = orderMapper;
        this.userRepository = userRepository;
    }

    @Override
    public List<OrderDTO> findAllOrders() {
        return orderRepository.findAll().stream().map(order -> {
            OrderDTO orderDTO = orderMapper.orderToOrderDTO(order);
            return orderDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public List<OrderDTO> findOrdersByDate(LocalDate date) {
        return orderRepository.findOrdersByDate(date).stream().map(order -> {
            OrderDTO orderDTO = orderMapper.orderToOrderDTO(order);
            return orderDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public OrderDTO saveOrder(OrderDTO orderDTO) {
        Order savedOrder = orderRepository.save(orderMapper.orderDTOToOrder(orderDTO));
        return orderMapper.orderToOrderDTO(savedOrder);
    }

    @Override
    public void deleteOrder(OrderDTO orderDTO) {
        orderRepository.delete(orderMapper.orderDTOToOrder(orderDTO));
    }

    @Override
    public void deleteOrderById(Long id) {
        orderRepository.deleteById(id);
    }

    @Override
    public List<OrderDTO> findOrdersByUserId(Long userId) {
        return userRepository.findById(userId).get().getOrders().stream().map(order -> {
            OrderDTO orderDTO = orderMapper.orderToOrderDTO(order);
            return orderDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public OrderDTO findOrderById(Long id) {
        Order order = orderRepository.findById(id).orElseThrow(NotFoundException::new);
        return orderMapper.orderToOrderDTO(order);
    }
}
