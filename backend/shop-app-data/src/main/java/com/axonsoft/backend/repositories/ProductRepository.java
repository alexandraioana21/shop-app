package com.axonsoft.backend.repositories;

import com.axonsoft.backend.domain.Product;
import com.axonsoft.backend.domain.ProductType;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findAllByNameLike(String name);

    List<Product> findByProductType(ProductType productType);
}
