package com.axonsoft.backend.model;

import com.axonsoft.backend.domain.Product;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class OrderElementDTO {

    private Long id;
    private Product product;
    private Integer quantity;
}
