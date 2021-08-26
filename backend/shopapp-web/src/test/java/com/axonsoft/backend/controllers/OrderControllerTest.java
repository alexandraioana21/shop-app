package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.services.OrderService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(MockitoExtension.class)
class OrderControllerTest {

    @Mock
    OrderService orderService;

    @InjectMocks
    OrderController orderController;

    MockMvc mockMvc;

    OrderDTO returnOrder;

    List<OrderDTO> orders;

    @BeforeEach
    void setUp() {
        orders = new ArrayList<>();
        OrderDTO order1 = new OrderDTO();
        order1.setId(1L);
        OrderDTO order2 = new OrderDTO();
        order2.setId(2L);
        orders.add(order1);
        orders.add(order2);

        returnOrder = new OrderDTO();
        returnOrder.setId(3L);

        mockMvc = MockMvcBuilders
                .standaloneSetup(orderController)
                .build();
    }

    @Test
    void findAllOrders() throws Exception {
        when(orderService.findAllOrders()).thenReturn(orders);

        MvcResult result = mockMvc.perform(get("/orders/"))
                .andExpect(status().isOk()).andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertEquals(list.size(), 2);
        verify(orderService).findAllOrders();
    }

    @Test
    void findOrdersByDate() throws Exception {
        when(orderService.findOrdersByDate(any())).thenReturn(orders);

        MvcResult result = mockMvc.perform(get("/orders/findByDate/2021-08-21"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> userDTO = new ObjectMapper().readValue(content, List.class);

        assertEquals(userDTO.size(), 2);
        verify(orderService).findOrdersByDate(any());
    }

    @Test
    void saveOrder() throws Exception {
        when(orderService.saveOrder(any())).thenReturn(returnOrder);

        MvcResult result = mockMvc.perform(post("/orders/save/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"date\":\"2021-08-20\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        OrderDTO orderDTO = new ObjectMapper().readValue(content, OrderDTO.class);

        assertNotNull(orderDTO.getId());
        verify(orderService).saveOrder(any());
    }

    @Test
    void deleteOrder() throws Exception {
        mockMvc.perform(delete("/orders/delete/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"id\":\"3\",\"date\":\"2021-08-20\"}"))
                .andExpect(status().isOk());

        verify(orderService).deleteOrder(any());
    }

    @Test
    void deleteOrderById() throws Exception {
        mockMvc.perform(delete("/orders/delete/3"))
                .andExpect(status().isOk());

        verify(orderService).deleteOrderById(anyLong());
    }

    @Test
    void findOrdersByUser() throws Exception {
        when(orderService.findOrdersByUserId(anyLong())).thenReturn(orders);

        MvcResult result = mockMvc.perform(get("/orders/findByUser/1").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"id\":\"3\",\"date\":\"2021-08-20\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertNotNull(list);
        assertEquals(list.size(), 2);
        verify(orderService).findOrdersByUserId(anyLong());
    }

    @Test
    void findOrderById() throws Exception {
        when(orderService.findOrderById(anyLong())).thenReturn(returnOrder);

        MvcResult result = mockMvc.perform(get("/orders/3"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        OrderDTO orderDTO = new ObjectMapper().readValue(content, OrderDTO.class);

        assertNotNull(orderDTO);
        verify(orderService).findOrderById(anyLong());
    }

}