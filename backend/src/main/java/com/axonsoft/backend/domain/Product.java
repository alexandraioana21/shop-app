package com.axonsoft.backend.domain;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "products")
public class Product extends BaseEntity{

    private String name;

    @Enumerated(value = EnumType.STRING)
    private ProductType productType;
    private String description;
    private Double price;
    private String imageUrl;

    @Builder
    public Product(Long id, String name, ProductType productType, String description, Double price, String imageUrl) {
        super(id);
        this.name = name;
        this.productType = productType;
        this.description = description;
        this.price = price;
        this.imageUrl = imageUrl;
    }
}
