package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.Product;
import com.axonsoft.backend.domain.ProductType;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.mappers.ProductMapper;
import com.axonsoft.backend.model.ProductDTO;
import com.axonsoft.backend.repositories.ProductRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

    @Mock
    ProductRepository productRepository;

    @Mock
    ProductMapper productMapper;

    @InjectMocks
    ProductServiceImpl productService;

    Product returnProduct;

    ProductDTO productDTO;

    List<Product> returnProducts;

    @BeforeEach
    void setUp() {
        returnProduct = Product.builder().id(1L).name("Apple").productType(ProductType.FRUIT).build();

        productDTO = new ProductDTO();
        productDTO.setId(1L);
        productDTO.setName("Apple");
        productDTO.setProductType(ProductType.FRUIT);

        returnProducts = new ArrayList<>();
        returnProducts.add(Product.builder().id(2L).name("Apple").productType(ProductType.FRUIT).build());
        returnProducts.add(Product.builder().id(3L).name("Apple").productType(ProductType.FRUIT).build());
    }

    @Test
    void findProductById() {
        when(productRepository.findById(anyLong())).thenReturn(Optional.of(returnProduct));

        when(productMapper.productToProductDTO(any())).thenReturn(productDTO);

        ProductDTO found = productService.findProductById(1L);

        assertNotNull(found);
        verify(productRepository).findById(anyLong());
    }

    @Test
    void findProductByIdNotFound() {
        when(productRepository.findById(anyLong())).thenReturn(Optional.empty());

        assertThrows(NotFoundException.class, () -> productService.findProductById(13L));
    }

    @Test
    void findAllProducts() {

        when(productRepository.findAll()).thenReturn(returnProducts);

        List<ProductDTO> productDTOs = productService.findAllProducts();

        assertNotNull(productDTOs);
        assertEquals(2, productDTOs.size());
        verify(productRepository).findAll();
    }

    @Test
    void findProductsByNameLike() {

        when(productRepository.findAllByNameLike(anyString())).thenReturn(returnProducts);

        when(productMapper.productToProductDTO(any())).thenReturn(productDTO);

        List<ProductDTO> found = productService.findProductsByNameLike("%A%");

        assertNotNull(found);
        assertEquals(found.size(), 2);
        verify(productRepository, times(1)).findAllByNameLike(anyString());
    }

    @Test
    void saveProduct() {

        when(productRepository.save(any())).thenReturn(returnProduct);
        when(productMapper.productToProductDTO(any())).thenReturn(productDTO);

        ProductDTO savedProduct = productService.saveProduct(productDTO);

        assertNotNull(savedProduct);

        verify(productRepository).save(any());
    }

    @Test
    void deleteProduct() {
        productService.deleteProduct(productMapper.productToProductDTO(returnProduct));

        verify(productRepository, times(1)).delete(any());
    }

    @Test
    void deleteProductById() {
        productService.deleteProductById(returnProduct.getId());

        verify(productRepository, times(1)).deleteById(any());
    }

    @Test
    void findProductsByProductType() {

        when(productRepository.findByProductType(any())).thenReturn(returnProducts);

        when(productMapper.productToProductDTO(any())).thenReturn(productDTO);

        List<ProductDTO> found = productService.findProductsByProductType("fruit");

        assertNotNull(found);
        assertEquals(found.size(), 2);
        verify(productRepository, times(1)).findByProductType(any());
    }
}