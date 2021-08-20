package com.axonsoft.backend.mappers;

import com.axonsoft.backend.domain.Order;
import com.axonsoft.backend.model.OrderDTO;
import org.mapstruct.Mapper;

@Mapper
public interface OrderMapper {

    OrderDTO orderToOrderDTO(Order order);

    Order orderDTOToOrder(OrderDTO orderDTO);
}
