package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.ProductDTO;
import com.axonsoft.backend.services.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(description = "This is a Controller for Products")
@RestController
@RequestMapping("/products/")
@CrossOrigin("http://localhost:4200")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @ApiOperation(value = "This will find a product by id.", notes = "The id will be given in the path.")
    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)  // checked
    public ProductDTO findProductById(@PathVariable Long id){
        return productService.findProductById(id);
    }

    @ApiOperation(value = "This will return a list of all products.")
    @GetMapping
    @ResponseStatus(HttpStatus.OK)  // checked
    public List<ProductDTO> findAllProducts(){
        return productService.findAllProducts();
    }

    @ApiOperation(value = "This will return a list of all products with a given name.", notes = "The name will be given in the path.")
    @GetMapping("findByName/{name}")
    @ResponseStatus(HttpStatus.OK) // checked
    public List<ProductDTO> findProductsByNameLike(@PathVariable String name){
        return productService.findProductsByNameLike(name);
    }

    @ApiOperation(value = "This will return a list of all products with a given type.", notes = "The type will be given in the path.")
    @GetMapping("findByType/{type}")
    @ResponseStatus(HttpStatus.OK) // checked
    public List<ProductDTO> findProductsByType(@PathVariable String type){
        return productService.findProductsByProductType(type);
    }

    @ApiOperation(value = "This will save or update a product.", notes = "The product will be given in the body.")
    @PostMapping("save/")
    @ResponseBody           //checked save & update
    public ProductDTO saveProduct(@RequestBody ProductDTO productDTO){
        return productService.saveProduct(productDTO);
    }

    @ApiOperation(value = "This will update a product.", notes = "The product will be given in the body and the id in the path.")
    @PutMapping("update/{id}")
    @ResponseBody           //checked save & update
    public ProductDTO updateProduct(@RequestBody ProductDTO productDTO, @PathVariable Long id){
        productDTO.setId(id);
        return productService.saveProduct(productDTO);
    }

    @ApiOperation(value = "This will delete a product.", notes = "The product will be given in the body.")
    @DeleteMapping("delete/")
    @ResponseStatus(HttpStatus.OK) //checked
    public void deleteProduct(@RequestBody ProductDTO productDTO){
        productService.deleteProduct(productDTO);
    }

    @ApiOperation(value = "This will delete a product.", notes = "The id will be given in the path.")
    @DeleteMapping("delete/{id}")
    @ResponseStatus(HttpStatus.OK) //checked
    public void deleteProductById(@PathVariable Long id){
        productService.deleteProductById(id);
    }
}
