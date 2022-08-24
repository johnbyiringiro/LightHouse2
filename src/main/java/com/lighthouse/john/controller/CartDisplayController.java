package com.lighthouse.john.controller;

import com.lighthouse.john.dao.CartDAO;
import com.lighthouse.john.enitity.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartDisplayController {

    @Autowired
    private CartDAO cartDAO;

    @RequestMapping(value = "/cartDisplay", method = RequestMethod.GET)
    public ModelAndView cartdisplay() {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart/cartDisplay");
        List<Cart> carts = new ArrayList<Cart>();

        carts = cartDAO.findAll();


        carts.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("carts", carts);
        response.addObject("search", "yes");
        return response;
    }



    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public ModelAndView checkoutdisplay() {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart/checkoutDisplay");
        List<Cart> carts = new ArrayList<Cart>();

        carts = cartDAO.findAll();


        carts.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("carts", carts);
        response.addObject("search", "yes");
        return response;
    }



    @RequestMapping(value = "/editCart", method = RequestMethod.GET)
    public ModelAndView addToCart(@RequestParam(required = false) String id,String quentity,String productName,String price) {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart/cartDisplay");

        Cart cart = new Cart();
        cart.setId(Integer.parseInt(id));
        cart.setQuantity(quentity);
        cart.setProductName(productName);
        cart.setPrice(price);
        cartDAO.save(cart);

        List<Cart> carts = new ArrayList<Cart>();
        carts = cartDAO.findAll();
        carts.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("carts", carts);
        response.addObject("search", "yes");

        return response;
    }

    @Transactional
    @RequestMapping(value = "/deleteCart", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(required = false) int id) {
        ModelAndView response = new ModelAndView();
        response.setViewName("cart/cartDisplay");
        cartDAO.removeCartById(id);

        List<Cart> carts = new ArrayList<Cart>();

        carts = cartDAO.findAll();
        carts.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("carts", carts);
        response.addObject("search", id);

        return response;
    }


}
