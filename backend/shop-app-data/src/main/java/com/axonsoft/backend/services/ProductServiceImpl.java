package com.axonsoft.backend.services;

import com.axonsoft.backend.domain.Product;
import com.axonsoft.backend.domain.ProductType;
import com.axonsoft.backend.exceptions.NotFoundException;
import com.axonsoft.backend.mappers.ProductMapper;
import com.axonsoft.backend.model.ProductDTO;
import com.axonsoft.backend.repositories.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;
    private  final ProductMapper productMapper;

    public ProductServiceImpl(ProductRepository productRepository, ProductMapper productMapper) {
        this.productRepository = productRepository;
        this.productMapper = productMapper;
    }

    @Override
    public ProductDTO findProductById(Long id) {
        return productMapper.productToProductDTO(productRepository.findById(id).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<ProductDTO> findAllProducts() {
        return productRepository.findAll().stream().map(product -> {
            ProductDTO productDTO = productMapper.productToProductDTO(product);
            return productDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public List<ProductDTO> findProductsByNameLike(String name) {
        return productRepository.findAllByNameLike("%" + name + "%").stream().map(product -> {
            ProductDTO productDTO = productMapper.productToProductDTO(product);
            return productDTO;
        }).collect(Collectors.toList());
    }

    @Override
    public ProductDTO saveProduct(ProductDTO productDTO) {
        Product savedProduct = productRepository.save(productMapper.productDTOToProduct(productDTO));
        return productMapper.productToProductDTO(savedProduct);
    }

    @Override
    public void deleteProduct(ProductDTO productDTO) {
        productRepository.delete(productMapper.productDTOToProduct(productDTO));
    }

    @Override
    public void deleteProductById(Long id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<ProductDTO> findProductsByProductType(String type) {
        if (type.toLowerCase().equals("fruit"))
            return productRepository.findByProductType(ProductType.FRUIT).stream().map(product -> {
                ProductDTO productDTO = productMapper.productToProductDTO(product);
                return productDTO;
            }).collect(Collectors.toList());
        else if (type.toLowerCase().equals("vegetable"))
            return productRepository.findByProductType(ProductType.VEGETABLE).stream().map(product -> {
                ProductDTO productDTO = productMapper.productToProductDTO(product);
                return productDTO;
            }).collect(Collectors.toList());
        else throw new NotFoundException();
    }
}
