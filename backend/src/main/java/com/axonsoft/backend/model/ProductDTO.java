package com.axonsoft.backend.model;

import com.axonsoft.backend.domain.ProductType;
import io.swagger.annotations.ApiModelProperty;
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

    @ApiModelProperty(value = "Product's id", required = true)
    private Long id;

    @ApiModelProperty(value = "Product's name", required = true)
    @NotBlank
    private String name;

    @ApiModelProperty(value = "Product's type", required = true)
    private ProductType productType;

    @ApiModelProperty(value = "Product's description", required = true)
    @NotBlank
    @Size(min = 3, max = 255)
    private String description;

    @ApiModelProperty(value = "Product's price", required = true)
    @Min(1)
    private Double price;

    @ApiModelProperty(value = "Product's image url", required = true)
    @URL
    private String imageUrl;

}
