package ru.savvy.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import ru.savvy.shop.entity.Product;
import ru.savvy.shop.repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dnazarex on 11/02/15.
 */
@Service
@Transactional
public class MyService {

    @Autowired
    private ProductRepository productRepository;

    public List<Product> myDataFromDB(Long id) {

        return productRepository.findByGroupId(id);

    }
}
