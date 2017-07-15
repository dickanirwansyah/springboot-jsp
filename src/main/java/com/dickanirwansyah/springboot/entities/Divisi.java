/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.entities;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author dickajava
 */

@Entity
@Table(name = "divisi", catalog = "db_latihan")
public class Divisi implements Serializable{
 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "iddivisi", nullable = false)
    private int iddivisi;
    
    @Column(name = "nama", nullable = false)
    private String nama;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "divisi")
    private Set<Karyawan> karyawans=new HashSet<Karyawan>();
    
    public Divisi (){
        
    }
    
    public Divisi(int iddivisi, String nama){
        this.iddivisi=iddivisi;
        this.nama=nama;
    }
    
    public Divisi(int iddivisi, String nama, Set<Karyawan>karyawans){
        this.iddivisi=iddivisi;
        this.nama=nama;
        this.karyawans=karyawans;
    }
    
    public int getIddivisi(){
        return this.iddivisi=iddivisi;
    }
    
    public void setIddivisi(int iddivisi){
        this.iddivisi=iddivisi;
    }
    
    public String getNama(){
        return this.nama;
    }
    
    public void setNama(String nama){
        this.nama=nama;
    }
    
}
