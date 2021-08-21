package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.services.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/orders/")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)  //checked
    public List<OrderDTO> findAllOrders(){
        return orderService.findAllOrders();
    }

    @GetMapping("findByDate/{date}")
    @ResponseStatus(HttpStatus.OK) //checked
    public List<OrderDTO> findOrdersByDate(@PathVariable String date){
        return orderService.findOrdersByDate(LocalDate.parse(date));
    }

    @PostMapping("save/") //checked save & update
    public OrderDTO saveOrder(@RequestBody OrderDTO orderDTO){
        return orderService.saveOrder(orderDTO);
    }

    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteOrder(@RequestBody OrderDTO orderDTO){
        orderService.deleteOrder(orderDTO);
    }

    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteOrderById(@PathVariable Long id){
        orderService.deleteOrderById(id);
    }

    @GetMapping("/findByUser")
    @ResponseStatus(HttpStatus.OK) //checked
    public List<OrderDTO> findOrdersByUser(@RequestBody UserDTO userDTO){
        return orderService.findOrdersByUser(userDTO);
    }

    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK) //checked
    public OrderDTO findOrderById(@PathVariable Long id){
        return orderService.findOrderById(id);
    }
}
