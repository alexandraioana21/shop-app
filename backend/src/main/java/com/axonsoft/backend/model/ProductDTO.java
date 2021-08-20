package com.axonsoft.backend.model;

import com.axonsoft.backend.domain.ProductType;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.URL;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@Setter
@NoArgsConstructor
public class ProductDTO {

    private Long id;

    @NotBlank
    private String name;
    private ProductType productType;

    @NotBlank
    @Size(min = 3, max = 255)
    private String description;

    @Min(1)
    private Double price;

    @URL
    private String imageUrl;

}
