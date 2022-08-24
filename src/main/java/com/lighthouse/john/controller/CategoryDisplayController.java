package com.lighthouse.john.controller;

import com.lighthouse.john.dao.CategoryDAO;
import com.lighthouse.john.enitity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CategoryDisplayController {

    @Autowired
    private CategoryDAO categoryDAO;


    @RequestMapping(value = "/categoryDisplay", method = RequestMethod.GET)
    public ModelAndView search1() {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/categoryDisplay");
        List<Category> categories = new ArrayList<Category>();

        categories = categoryDAO.findAll();
        categories.forEach(
                (n)->System.out.println(n.toString())
        );
        response.addObject("categories", categories);
        response.addObject("search", "yes");
        return response;
    }


}
