package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.ProductDTO;
import com.axonsoft.backend.services.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products/")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)
    public ProductDTO findProductById(Long id){
        return productService.findProductById(id);
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<ProductDTO> findAllProducts(){
        return productService.findAllProducts();
    }

    @GetMapping("{name}")
    @ResponseStatus(HttpStatus.OK)
    public List<ProductDTO> findProductsByNameLike(@PathVariable String name){
        return productService.findProductsByNameLike(name);
    }

    @PostMapping("save/")
    @ResponseBody
    public ProductDTO saveProduct(@RequestBody ProductDTO productDTO){
        return productService.saveProduct(productDTO);
    }

    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK)
    public void deleteProduct(@RequestBody ProductDTO productDTO){
        productService.deleteProduct(productDTO);
    }

    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteProductById(@PathVariable Long id){
        productService.deleteProductById(id);
    }
}
