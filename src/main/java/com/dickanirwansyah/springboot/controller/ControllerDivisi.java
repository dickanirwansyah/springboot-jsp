/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.controller;

import com.dickanirwansyah.springboot.dao.DivisiDAO;
import com.dickanirwansyah.springboot.entities.Divisi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author dickajava
 */

@Controller
@RequestMapping(value = "/Data")
public class ControllerDivisi {
    
    @Autowired
    private DivisiDAO divisiDAO;
    
    @RequestMapping(value = "/divisi", method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("title", "Divisi");
        model.addAttribute("listdivisi", divisiDAO.findAll());
        return "divisi.index";
    }
    
    @RequestMapping(value = "/insertdivisi", method = RequestMethod.POST)
    public String insert(@ModelAttribute Divisi divisi){
        divisiDAO.save(divisi);
        return "redirect:/Data/divisi";
    }
    
    @RequestMapping(value = "/updatedivisi", method = RequestMethod.POST)
    public String update(@ModelAttribute Divisi divisi, int iddivisi){
      if(divisiDAO.findOne(iddivisi)!=null){
          divisiDAO.save(divisi);
      }   
      return "redirect:/Data/divisi";
    }
    
    @RequestMapping(value = "/ambilbyid/{iddivisi}", method = RequestMethod.GET)
    public String getbyid(@PathVariable("iddivisi")int iddivisi, Model model){
        model.addAttribute("title", "Update Divisi");
        model.addAttribute("divisi", divisiDAO.findOne(iddivisi));
        return "divisi.update";
    }
    
    @RequestMapping(value = "/deletedivisi/{iddivisi}", method = RequestMethod.GET)
    public String delete(@PathVariable("iddivisi")int iddivisi, 
            @ModelAttribute Divisi divisi){
        if(divisiDAO.findOne(iddivisi)!=null){
            divisiDAO.delete(iddivisi);
        }
        return "redirect:/Data/divisi";
    }
    
   
}
