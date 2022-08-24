package com.lighthouse.john;

import com.lighthouse.john.dao.CartDAO;
import com.lighthouse.john.enitity.Cart;
import org.junit.jupiter.api.Test;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class CartDAOTest {

    @Test
    void contextLoads() {

        CartDAO cartDAO = new CartDAO() {
            @Override
            public Cart findById(Integer id) {
                return null;
            }

            @Override
            public void removeCartById(int id) {

            }

            @Override
            public List<Cart> findAll() {
                return null;
            }

            @Override
            public List<Cart> findAll(Sort sort) {
                return null;
            }

            @Override
            public List<Cart> findAllById(Iterable<Long> longs) {
                return null;
            }

            @Override
            public <S extends Cart> List<S> saveAll(Iterable<S> entities) {
                return null;
            }

            @Override
            public void flush() {

            }

            @Override
            public <S extends Cart> S saveAndFlush(S entity) {
                return null;
            }

            @Override
            public <S extends Cart> List<S> saveAllAndFlush(Iterable<S> entities) {
                return null;
            }

            @Override
            public void deleteAllInBatch(Iterable<Cart> entities) {

            }

            @Override
            public void deleteAllByIdInBatch(Iterable<Long> longs) {

            }

            @Override
            public void deleteAllInBatch() {

            }

            @Override
            public Cart getOne(Long aLong) {
                return null;
            }

            @Override
            public Cart getById(Long aLong) {
                return null;
            }

            @Override
            public <S extends Cart> List<S> findAll(Example<S> example) {
                return null;
            }

            @Override
            public <S extends Cart> List<S> findAll(Example<S> example, Sort sort) {
                return null;
            }

            @Override
            public Page<Cart> findAll(Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Cart> S save(S entity) {
                return null;
            }

            @Override
            public Optional<Cart> findById(Long aLong) {
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
            public void delete(Cart entity) {

            }

            @Override
            public void deleteAllById(Iterable<? extends Long> longs) {

            }

            @Override
            public void deleteAll(Iterable<? extends Cart> entities) {

            }

            @Override
            public void deleteAll() {

            }

            @Override
            public <S extends Cart> Optional<S> findOne(Example<S> example) {
                return Optional.empty();
            }

            @Override
            public <S extends Cart> Page<S> findAll(Example<S> example, Pageable pageable) {
                return null;
            }

            @Override
            public <S extends Cart> long count(Example<S> example) {
                return 0;
            }

            @Override
            public <S extends Cart> boolean exists(Example<S> example) {
                return false;
            }
        };
    }
}