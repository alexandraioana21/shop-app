package com.axonsoft.backend.mappers;

import com.axonsoft.backend.domain.Product;
import com.axonsoft.backend.model.ProductDTO;
import org.mapstruct.Mapper;

@Mapper
public interface ProductMapper {

    ProductDTO productToProductDTO(Product product);

    Product productDTOToProduct(ProductDTO productDTO);
}
