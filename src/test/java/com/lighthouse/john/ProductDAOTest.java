package com.lighthouse.john;

import com.lighthouse.john.dao.ProductDAO;
import com.lighthouse.john.enitity.Product;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class ProductDAOTest {

    @Test
    void contextLoads() {

        ProductDAO productDAO = new ProductDAO() {
            @Override
            public Product findById(Integer id) {
                return null;
            }

            @Override
            public List<Product> allfood() {
                return null;
            }

            @Override
            public List<Product> findByName(String course) {
                return null;
            }

            @Override
            public void removeProductById(int id) {

            }

            @Override
            public List<Product> findAll() {
                return null;
            }

            @Override
            public List<Product> findAll(Sort sort) {
                return null;
            }

            @Override
            public List<Product> findAllById(Iterable<Long> longs) {
                return null;
            }

            @Override
            public <S extends Product> List<S> saveAll(Iterable<S> entities) {
                return null;
            }

            @Override
            public void flush() {

            }

            @Override
            public <S extends Product> S saveAndFlush(S entity) {
                return null;
            }

            @Override
            public <S extends Product> List<S> saveAllAndFlush(Iterable<S> entities) {
                return null;
            }

            @Override
            public void deleteAllInBatch(Iterable<Product> entities) {

            }

            @Override
            public void deleteAllByIdInBatch(Iterable<Long> longs) {

            }

            @Override
            public void deleteAllInBatch() {

            }

            @Override
            public Product getOne(Long aLong) {
                return null;
            }

            @Override
            public Product getById(Long aLong) {
                return null;
            }

            @Override
            public <S extends Product> List<S> findAll(Example<S> example) {
                return null;
            }

            @Override
            public <S extends Product> List<S> findAll(Example<S> example, Sort sort) {
                return null;
            }

            @Override
            public Page<Product> findAll(Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Product> S save(S entity) {
                return null;
            }

            @Override
            public Optional<Product> findById(Long aLong) {
                return Optional.empty();
            }

            @Override
            public boolean existsById(Long aLong) {
                return false;
            }

            @Override
            public long count() {
                return 0;
            }

            @Override
            public void deleteById(Long aLong) {

            }

            @Override
            public void delete(Product entity) {

            }

            @Override
            public void deleteAllById(Iterable<? extends Long> longs) {

            }

            @Override
            public void deleteAll(Iterable<? extends Product> entities) {

            }

            @Override
            public void deleteAll() {

            }

            @Override
            public <S extends Product> Optional<S> findOne(Example<S> example) {
                return Optional.empty();
            }

            @Override
            public <S extends Product> Page<S> findAll(Example<S> example, Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Product> long count(Example<S> example) {
                return 0;
            }

            @Override
            public <S extends Product> boolean exists(Example<S> example) {
                return false;
            }
        };

    }

}