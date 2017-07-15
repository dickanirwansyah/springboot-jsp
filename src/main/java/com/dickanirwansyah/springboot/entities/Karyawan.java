/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author dickajava
 */
@Entity
@Table(name = "karyawan", catalog = "db_latihan")
public class Karyawan implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idkaryawan", nullable = false)
    private int idkaryawan;
    
    @Column(name = "nama", nullable = false)
    private String nama;
    
    @Column(name = "alamat", nullable = false)
    private String alamat;
    
    @Column(name = "telepon", nullable = false)
    private String telepon;
    
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "tanggal_lahir", nullable = false)
    private Date tanggal_lahir;
    
    @ManyToOne
    @JoinColumn(name = "iddivisi", nullable = false)
    private Divisi divisi;
    
    public Karyawan(){
        
    }
    
    public Karyawan(int idkaryawan, String nama, String alamat, 
            String telepon, Date tanggal_lahir, Divisi divisi){
        
        this.idkaryawan=idkaryawan;
        this.nama=nama;
        this.alamat=alamat;
        this.telepon=telepon;
        this.tanggal_lahir=tanggal_lahir;
        this.divisi=divisi;
    }
    
    public int getIdkaryawan(){
        return this.idkaryawan;
    }
    
    public void setIdkaryawan(int idkaryawan){
        this.idkaryawan=idkaryawan;
    }
    
    public String getNama(){
        return nama;
    }
    
    public void setNama(String nama){
        this.nama=nama;
    }
    
    public String getAlamat(){
        return this.alamat;
    }
    
    public void setAlamat(String alamat){
        this.alamat=alamat;
    }
    
    public String getTelepon(){
        return this.telepon;
    }
    
    public void setTelepon(String telepon){
        this.telepon=telepon;
    }
    
    public Date getTanggal_lahir(){
        return this.tanggal_lahir;
    }
    
    public void setTanggal_lahir(Date tanggal_lahir){
        this.tanggal_lahir=tanggal_lahir;
    }
    
    public Divisi getDivisi(){
        return this.divisi=divisi;
    }
    
    public void setDivisi(Divisi divisi){
        this.divisi=divisi;
    }
}
