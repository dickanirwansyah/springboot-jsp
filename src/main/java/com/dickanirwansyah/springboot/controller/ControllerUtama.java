/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.controller;

import com.dickanirwansyah.springboot.dao.DivisiDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author dickajava
 */

@Controller
public class ControllerUtama {
    
    @Autowired
    private DivisiDAO divisiDAO;
    
    @RequestMapping("/")
    public ModelAndView andView(Model model){
        model.addAttribute("title", "Home");
        ModelAndView modelAndView=new ModelAndView();
        model.addAttribute("listdivisi", divisiDAO.findAll());
        modelAndView.setViewName("home.index");
        return modelAndView;
    }
}
