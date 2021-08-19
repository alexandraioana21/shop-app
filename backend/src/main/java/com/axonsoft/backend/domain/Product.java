package com.axonsoft.backend.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product extends BaseEntity{

    private ProductType productType;
    private String description;
    private Double price;

    @Builder
    public Product(Long id, ProductType productType, String description, Double price) {
        super(id);
        this.productType = productType;
        this.description = description;
        this.price = price;
    }
}
