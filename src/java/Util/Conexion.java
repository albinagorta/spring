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
    
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource db=new DriverManagerDataSource();
        db.setDriverClassName("com.mysql.jdbc.Driver");
        db.setUrl("jdbc:mysql://localhost:3306/bdcrudspring");
        db.setUsername("root");
        db.setPassword("");
        return db;
        
    }
    
    
}
