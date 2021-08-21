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
    @ResponseStatus(HttpStatus.OK)  // checked
    public ProductDTO findProductById(@PathVariable Long id){
        return productService.findProductById(id);
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)  // checked
    public List<ProductDTO> findAllProducts(){
        return productService.findAllProducts();
    }

    @GetMapping("findByName/{name}")
    @ResponseStatus(HttpStatus.OK) // checked
    public List<ProductDTO> findProductsByNameLike(@PathVariable String name){
        return productService.findProductsByNameLike(name);
    }

    @GetMapping("findByType/{type}")
    @ResponseStatus(HttpStatus.OK) // checked
    public List<ProductDTO> findProductsByType(@PathVariable String type){
        return productService.findProductsByProductType(type);
    }

    @PostMapping("save/")
    @ResponseBody           //checked save & update
    public ProductDTO saveProduct(@RequestBody ProductDTO productDTO){
        return productService.saveProduct(productDTO);
    }

    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK) //checked
    public void deleteProduct(@RequestBody ProductDTO productDTO){
        productService.deleteProduct(productDTO);
    }

    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK) //checked
    public void deleteProductById(@PathVariable Long id){
        productService.deleteProductById(id);
    }
}
