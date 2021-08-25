package com.axonsoft.backend.services;

import com.axonsoft.backend.model.ProductDTO;

import java.util.List;

public interface ProductService {

    ProductDTO findProductById(Long id);

    List<ProductDTO> findAllProducts();

    List<ProductDTO> findProductsByNameLike(String name);

    ProductDTO saveProduct(ProductDTO productDTO);

    void deleteProduct(ProductDTO productDTO);

    void deleteProductById(Long id);

    List<ProductDTO> findProductsByProductType(String type);
}
