/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.dao;

import com.dickanirwansyah.springboot.entities.Divisi;
import java.io.Serializable;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author dickajava
 */
public interface DivisiDAO extends CrudRepository<Divisi, Integer>{
    
}
