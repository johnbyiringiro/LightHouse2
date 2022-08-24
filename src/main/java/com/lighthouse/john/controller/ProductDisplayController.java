package com.lighthouse.john.controller;

import com.lighthouse.john.dao.CartDAO;
import com.lighthouse.john.dao.UserDAO;
import com.lighthouse.john.enitity.Cart;
import com.lighthouse.john.dao.CategoryDAO;
import com.lighthouse.john.dao.ProductDAO;
import com.lighthouse.john.enitity.Category;
import com.lighthouse.john.enitity.Product;
import com.lighthouse.john.enitity.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductDisplayController {

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private CartDAO cartDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/productDisplay", method = RequestMethod.GET)
    public ModelAndView search1() {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/productDisplay");
        List<Product> products = new ArrayList<Product>();

        products = productDAO.findAll();

        List<Category> category =new ArrayList<Category>();
        category = categoryDAO.findAll();
        products.contains(category);




        products.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("products", products);
        response.addObject("search", "yes");
        return response;
    }

//	@RequestMapping(value = "/courseDisplay", method = RequestMethod.POST)
//	public ModelAndView search() {
//		ModelAndView response = new ModelAndView();
//		response.setViewName("course/courseDisplay");

//		return response;
//	}

    @RequestMapping(value = "/productDisp", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(required = false) String search) {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/productDisplay");

        List<Product> products = new ArrayList<Product>();
        if (!StringUtils.isEmpty(search)) {
            if(search.contains(" ")){
                search= search.substring(0, search.indexOf(" "));
            }
            products = productDAO.findByName(search);
        }

        products.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("products", products);
        response.addObject("search", search);

        return response;
    }

    @RequestMapping(value = "/addToCart", method = RequestMethod.GET)
    public ModelAndView addToCart(@RequestParam(required = false) String id,String productName,String price) {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/productDisplay");


        Cart cart = new Cart();

        cart.setId(Integer.parseInt(id));
        cart.setProductName(productName);
        cart.setPrice(price);
        cart.setQuantity("1");

        User user = new User();
        user = userDAO.findByEmail(getUserEmail());

        cart.setUser_id(user.getId());

        cartDAO.save(cart);

        List<Product> products = new ArrayList<Product>();
        products = productDAO.findAll();
        products.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("products", products);
        response.addObject("search", "yes");

        return response;
    }

    @Transactional
    @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(required = false) int id) {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/productDisplay");
        productDAO.removeProductById(id);

        List<Product> products = new ArrayList<Product>();

        products = productDAO.findAll();
        products.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("products", products);
        response.addObject("search", id);

        return response;
    }

    public String getUserEmail() {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            String username = ((UserDetails)principal).getUsername();
            return username;
        } else {
            String username = principal.toString();
            return "";
        }
    }

}
