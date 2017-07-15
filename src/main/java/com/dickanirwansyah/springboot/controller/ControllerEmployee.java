/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.controller;

import com.dickanirwansyah.springboot.dao.DivisiDAO;
import com.dickanirwansyah.springboot.dao.KaryawanDAO;
import com.dickanirwansyah.springboot.entities.Divisi;
import com.dickanirwansyah.springboot.entities.Karyawan;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
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
public class ControllerEmployee extends HttpServlet{
    
    @Autowired
    private KaryawanDAO karyawanDAO;
    
    @Autowired
    private DivisiDAO divisiDAO;
    
    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("title", "Employee");
        model.addAttribute("employee", karyawanDAO.findAll());
        model.addAttribute("listdivisi", divisiDAO.findAll());
        return "employee.index";
    }
    
    @RequestMapping(value = "/updatemployee/{idkaryawan}", method = RequestMethod.GET)
    public String updatepage(@PathVariable("idkaryawan")int idkaryawan,  Model model){
        model.addAttribute("title", "Update Employee");
        model.addAttribute("employes", karyawanDAO.findOne(idkaryawan));
        model.addAttribute("divisis", divisiDAO.findAll());
        return "employee.update";
    }
    
    @RequestMapping(value = "/updatemploye", method = RequestMethod.POST)
    public String updateproses(@ModelAttribute Karyawan karyawan, int idkaryawan, 
            HttpServletRequest request)
        throws ServletException, IOException{
        if(karyawanDAO.findOne(idkaryawan)!=null){
            String iddivisi = request.getParameter("iddivisi");
            Divisi divisi=divisiDAO.findOne(Integer.parseInt(iddivisi));
            karyawan.setDivisi(divisi);
            karyawanDAO.save(karyawan);
        }
        return "redirect:/Data/employee";
    }
    
    @RequestMapping(value = "/updatemployee", method = RequestMethod.POST)
    public String update(){
        return "redirect:/Data/employee";
    }
    
    @RequestMapping(value = "/deletemployee/{idkaryawan}", method = RequestMethod.GET)
    public String delete(@PathVariable("idkaryawan") int idkaryawan){
        Karyawan kodekaryawan=karyawanDAO.findOne(idkaryawan);
        karyawanDAO.delete(idkaryawan);
        return "redirect:/Data/employee";
    }
    
    @RequestMapping(value = "/insertemploye", method = RequestMethod.GET)
   public String insertpage(Model model){
       model.addAttribute("title", "insert employee");
       model.addAttribute("listdivisi", divisiDAO.findAll());
       return "employee.insert";
   } 
    
   @RequestMapping(value = "/insertemployee", method = RequestMethod.POST)
   public String insert(@ModelAttribute Karyawan karyawan, HttpServletRequest request)
           throws ServletException, IOException{
       try {
           String iddivisi=request.getParameter("iddivisi");
           //String tanggal=request.getParameter("tanggal_lahir");
           //SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
           Divisi divisi=divisiDAO.findOne(Integer.parseInt(iddivisi));
          
           karyawan.setDivisi(divisi);
           //karyawan.setTanggal_lahir(dateFormat.parse(tanggal));
           karyawanDAO.save(karyawan);
       } catch (Exception e) {
           e.printStackTrace();
       }
       return "redirect:/Data/employee";
   }
}
