package com.axonsoft.backend.controllers;


import com.axonsoft.backend.model.OrderDTO;
import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.services.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Api(description = "This is a Controller for Orders")
@RestController
@RequestMapping("/orders/")
@CrossOrigin("http://localhost:4200")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @ApiOperation(value = "This will return a list of all orders.")
    @GetMapping
    @ResponseStatus(HttpStatus.OK)  //checked
    public List<OrderDTO> findAllOrders(){
        return orderService.findAllOrders();
    }

    @ApiOperation(value = "This will return a list of all orders from a given date.", notes = "Date format: yyyy-mm-dd.")
    @GetMapping("findByDate/{date}")
    @ResponseStatus(HttpStatus.OK) //checked
    public List<OrderDTO> findOrdersByDate(@PathVariable String date){
        return orderService.findOrdersByDate(LocalDate.parse(date));
    }

    @ApiOperation(value = "This will save or update an order.", notes = "The order will be given in the body.")
    @PostMapping("save/") //checked save & update
    public OrderDTO saveOrder(@RequestBody OrderDTO orderDTO){
        return orderService.saveOrder(orderDTO);
    }

    @ApiOperation(value = "This will delete an order.", notes = "The order will be given in the body.")
    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteOrder(@RequestBody OrderDTO orderDTO){
        orderService.deleteOrder(orderDTO);
    }

    @ApiOperation(value = "This will delete an order.", notes = "The id will be given in the path.")
    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)  //checked
    public void deleteOrderById(@PathVariable Long id){
        orderService.deleteOrderById(id);
    }

    @ApiOperation(value = "This will find orders by user.", notes = "The user will be given in the body.")
    @GetMapping("/findByUser")
    @ResponseStatus(HttpStatus.OK) //checked
    public List<OrderDTO> findOrdersByUser(@RequestBody UserDTO userDTO){
        return orderService.findOrdersByUser(userDTO);
    }

    @ApiOperation(value = "This will find an order by id.", notes = "The id will be given in the path.")
    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK) //checked
    public OrderDTO findOrderById(@PathVariable Long id){
        return orderService.findOrderById(id);
    }
}
