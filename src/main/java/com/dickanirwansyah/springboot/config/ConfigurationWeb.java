/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dickanirwansyah.springboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

/**
 *
 * @author dickajava
 */
@Configuration
public class ConfigurationWeb {
    
    @Bean
    public TilesConfigurer configurer(){
        TilesConfigurer tilesConfigurer=new TilesConfigurer();
        String[] getFileXML = {"WEB-INF/tiles_folder/tiles_config.xml"};
        tilesConfigurer.setDefinitions(getFileXML);
        return tilesConfigurer;
    }
    
    @Bean
    public UrlBasedViewResolver resolver(){
        UrlBasedViewResolver viewResolver=new UrlBasedViewResolver();
        viewResolver.setViewClass(TilesView.class);
        return viewResolver;
    }
}
