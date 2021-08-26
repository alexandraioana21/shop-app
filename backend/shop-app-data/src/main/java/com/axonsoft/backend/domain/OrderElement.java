package com.axonsoft.backend.domain;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "order_elements")
public class OrderElement extends BaseEntity{

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
    private Integer quantity;

}
