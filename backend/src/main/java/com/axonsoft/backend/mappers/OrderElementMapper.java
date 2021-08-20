package com.axonsoft.backend.mappers;

import com.axonsoft.backend.domain.OrderElement;
import com.axonsoft.backend.model.OrderElementDTO;
import org.mapstruct.Mapper;

@Mapper
public interface OrderElementMapper {

    OrderElementDTO orderElementToOrderElementDTO(OrderElement orderElement);

    OrderElement orderElementDTOToOrderElement(OrderElementDTO orderElementDTO);
}
