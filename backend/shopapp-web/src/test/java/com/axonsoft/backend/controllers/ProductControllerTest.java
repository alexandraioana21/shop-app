package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.ProductDTO;
import com.axonsoft.backend.services.ProductService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(MockitoExtension.class)
class ProductControllerTest {

    @Mock
    ProductService productService;

    @InjectMocks
    ProductController productController;

    MockMvc mockMvc;

    ProductDTO returnProduct;

    List<ProductDTO> products;

    @BeforeEach
    void setUp() {
        products = new ArrayList<>();
        ProductDTO product1 = new ProductDTO();
        product1.setId(1L);
        ProductDTO product2 = new ProductDTO();
        product2.setId(2L);
        products.add(product1);
        products.add(product2);

        returnProduct = new ProductDTO();
        returnProduct.setId(3L);

        mockMvc = MockMvcBuilders
                .standaloneSetup(productController)
                .build();
    }

    @Test
    void findProductById() throws Exception {
        when(productService.findProductById(anyLong())).thenReturn(returnProduct);

        MvcResult result = mockMvc.perform(get("/products/3"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        ProductDTO productDTO = new ObjectMapper().readValue(content, ProductDTO.class);

        assertNotNull(productDTO);
        verify(productService).findProductById(anyLong());
    }

    @Test
    void findAllProducts() throws Exception {
        when(productService.findAllProducts()).thenReturn(products);

        MvcResult result = mockMvc.perform(get("/products/"))
                .andExpect(status().isOk()).andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertEquals(list.size(), 2);
        verify(productService).findAllProducts();
    }

    @Test
    void findProductsByNameLike() throws Exception {
        when(productService.findProductsByNameLike(anyString())).thenReturn(products);

        MvcResult result = mockMvc.perform(get("/products/findByName/p"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertEquals(list.size(), 2);
        verify(productService).findProductsByNameLike(any());
    }

    @Test
    void findProductsByType() throws Exception {
        when(productService.findProductsByProductType(anyString())).thenReturn(products);

        MvcResult result = mockMvc.perform(get("/products/findByType/f"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertEquals(list.size(), 2);
        verify(productService).findProductsByProductType(any());
    }

    @Test
    void saveProduct() throws Exception {
        when(productService.saveProduct(any())).thenReturn(returnProduct);

        MvcResult result = mockMvc.perform(post("/products/save/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"name\":\"Apple\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        ProductDTO productDTO = new ObjectMapper().readValue(content, ProductDTO.class);

        assertNotNull(productDTO.getId());
        verify(productService).saveProduct(any());
    }

    @Test
    void updateProduct() throws Exception {
        when(productService.saveProduct(any())).thenReturn(returnProduct);

        MvcResult result = mockMvc.perform(put("/products/update/1").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"name\":\"Apple\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        ProductDTO productDTO = new ObjectMapper().readValue(content, ProductDTO.class);

        assertNotNull(productDTO.getId());
        verify(productService).saveProduct(any());
    }

    @Test
    void deleteProduct() throws Exception {
        mockMvc.perform(delete("/products/delete/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"id\":\"3\",\"name\":\"Apple\"}"))
                .andExpect(status().isOk());

        verify(productService).deleteProduct(any());
    }

    @Test
    void deleteProductById() throws Exception {
        mockMvc.perform(delete("/products/delete/3"))
                .andExpect(status().isOk());

        verify(productService).deleteProductById(anyLong());
    }
}