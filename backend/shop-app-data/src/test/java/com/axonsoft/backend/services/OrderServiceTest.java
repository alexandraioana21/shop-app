package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.Order;
import com.axonsoft.backend.domain.User;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.mappers.OrderMapper;
import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.repositories.OrderRepository;
import com.axonsoft.backend.repositories.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDate;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class OrderServiceTest {

    @Mock
    OrderRepository orderRepository;

    @Mock
    OrderMapper orderMapper;

    @Mock
    UserRepository userRepository;

    @InjectMocks
    OrderServiceImpl orderService;

    Order returnOrder;

    OrderDTO orderDTO;

    User returnUser;

    List<Order> returnList;

    @BeforeEach
    void setUp() {
        returnUser = User.builder().id(1L).firstname("fname").lastname("lname").username("username").password("password").build();

        orderDTO = new OrderDTO();
        orderDTO.setId(1L);
        orderDTO.setUser(returnUser);

        returnOrder = Order.builder().id(1L).date(LocalDate.now()).user(returnUser).build();

        Set<Order> orders = new HashSet<>();
        orders.add(returnOrder);
        returnUser.setOrders(orders);

        returnList = new ArrayList<>();
        returnList.add(Order.builder().id(2L).date(LocalDate.now()).build());
        returnList.add(Order.builder().id(3L).date(LocalDate.now()).build());
    }

    @Test
    void findAllOrders() {

        when(orderRepository.findAll()).thenReturn(returnList);

        List<OrderDTO> orderDTOS = orderService.findAllOrders();

        assertNotNull(orderDTOS);
        assertEquals(2, orderDTOS.size());
        verify(orderRepository).findAll();
    }

    @Test
    void findOrdersByDate() {

        when(orderRepository.findOrdersByDate(any())).thenReturn(returnList);

        List<OrderDTO> orderDTOs = orderService.findOrdersByDate(LocalDate.now());

        assertEquals(2, orderDTOs.size());
        verify(orderRepository).findOrdersByDate(any());
    }

    @Test
    void saveOrder() {

        when(orderRepository.save(any())).thenReturn(returnOrder);
        when(orderMapper.orderToOrderDTO(any())).thenReturn(orderDTO);

        OrderDTO savedOrder = orderService.saveOrder(orderDTO);

        assertNotNull(savedOrder);

        verify(orderRepository).save(any());
    }

    @Test
    void deleteOrder() {
        orderService.deleteOrder(orderMapper.orderToOrderDTO(returnOrder));

        verify(orderRepository, times(1)).delete(any());
    }

    @Test
    void deleteOrderById() {
        orderService.deleteOrderById(returnOrder.getId());

        verify(orderRepository, times(1)).deleteById(any());
    }

    @Test
    void findOrdersByUser() {
        when(userRepository.findById(anyLong())).thenReturn(Optional.of(returnUser));

        Set<Order> orders = new HashSet<>();
        orders.add(returnOrder);

        when(orderMapper.orderToOrderDTO(any())).thenReturn(orderDTO);

        UserDTO userDTO = new UserDTO();
        userDTO.setId(1L);

        List<OrderDTO> orderDTOs = orderService.findOrdersByUser(userDTO);

        assertEquals(orderDTOs.size(), 1);
    }

    @Test
    void findOrderById() {

        when(orderRepository.findById(anyLong())).thenReturn(Optional.of(returnOrder));

        when(orderMapper.orderToOrderDTO(any())).thenReturn(orderDTO);
        OrderDTO found = orderService.findOrderById(1L);

        assertNotNull(found);
    }

    @Test
    void findOrderByIdNotFound() {
        when(orderRepository.findById(anyLong())).thenReturn(Optional.empty());

        assertThrows(NotFoundException.class, () -> orderService.findOrderById(13L));
    }
}