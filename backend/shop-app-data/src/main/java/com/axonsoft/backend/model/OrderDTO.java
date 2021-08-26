package com.axonsoft.backend.model;

import com.axonsoft.backend.domain.OrderElement;
import com.axonsoft.backend.domain.User;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
public class OrderDTO {

    private Long id;
    private User user;
    private Set<OrderElement> elements = new HashSet<>();
    @ApiModelProperty(value = "Order's date", required = true)
    private LocalDate date;
}
