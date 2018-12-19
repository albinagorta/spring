/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Angel Albinagorta
 */
public class Conexion {
    
    
    public DriverManagerDataSource conecta(){
       DriverManagerDataSource d=new DriverManagerDataSource();
       
       d.setDriverClassName("com.mysql.jdbc.Driver");
       d.setUrl("jdbc:mysql://localhost:3306/bdcrudspring");
       d.setUsername("root");
       d.setPassword("");
     return d;
       
    }
}
