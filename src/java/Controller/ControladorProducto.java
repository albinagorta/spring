/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Producto;
import Util.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Angel Albinagorta
 */

@Controller
public class ControladorProducto {
    JdbcTemplate jdbcTemplate; 
    ModelAndView mv;
    List lista;
    int id;
    
    public ControladorProducto(){
        Conexion con =new Conexion();
        jdbcTemplate=new JdbcTemplate(con.conecta());
        mv=new ModelAndView();
    }
    
    @RequestMapping("Producto.htm")
    public ModelAndView Lista(){
        String sql="select * from producto";
        lista=this.jdbcTemplate.queryForList(sql);
        mv.addObject("datos",lista);
        mv.setViewName("Producto");
        return mv;
    } 
    
    @RequestMapping("AgregarProducto.htm")
    public ModelAndView agregar(){
       mv.addObject(new Producto());
        mv.setViewName("Producto");
        return mv;
    }
    
     @RequestMapping(value="AgregarProducto.htm", method=RequestMethod.POST)
    public ModelAndView agregar(Producto p){
      String sql="insert into producto(nombre,stock,precio) values('"+p.getNombre()+"','"+p.getStock()+"','"+p.getPrecio()+"')";
      this.jdbcTemplate.update(sql);
      return new ModelAndView("redirect:/Producto.htm");
    }

     @RequestMapping("Eliminar.htm")
    public ModelAndView Eliminar(HttpServletRequest p){
        id=Integer.parseInt(p.getParameter("id"));
       String sql="delete from producto where id="+id;
        this.jdbcTemplate.update(sql);
      return new ModelAndView("redirect:/Producto.htm");
    }

    
     @RequestMapping("EditProducto.htm")
    public ModelAndView edit(HttpServletRequest p){
        id=Integer.parseInt(p.getParameter("id"));
      String sql="select * from producto where id="+id;
        lista=this.jdbcTemplate.queryForList(sql);
        mv.addObject("datos",lista);
        mv.setViewName("EditProducto");
        return mv;
    }
    
    
     @RequestMapping(value="EditProducto.htm", method=RequestMethod.POST)
    public ModelAndView editar(Producto p){
      String sql="update  producto set nombre='"+p.getNombre()+"',stock='"+p.getStock()+"',precio='"+p.getPrecio()+"' where id="+id;
      this.jdbcTemplate.update(sql);
      return new ModelAndView("redirect:/Producto.htm");
    }
    
    
}
