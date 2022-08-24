package com.lighthouse.john.dao;

import com.lighthouse.john.enitity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository
public interface ProductDAO extends JpaRepository<Product,Long> {
    public Product findById(@Param("id") Integer id);

    @Query(value = "select * from product ", nativeQuery = true)
    public List<Product> allfood();

    @Query(value = "select * from product r where lower(r.product_name) like lower(concat('%', :product_name,'%'))", nativeQuery = true)
    public List<Product> findByName(@Param("product_name")String course);

    public void removeProductById(int id);
}
