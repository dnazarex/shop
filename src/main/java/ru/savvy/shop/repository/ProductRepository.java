package ru.savvy.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.savvy.shop.entity.Product;

/**
 * Created by dnazarex on 11/02/15.
 */
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
