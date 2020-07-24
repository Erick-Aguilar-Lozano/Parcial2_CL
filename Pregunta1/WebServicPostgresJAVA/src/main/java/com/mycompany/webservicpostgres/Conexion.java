/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.webservicpostgres;
import java.sql.Connection;
import java.sql.*;
import java.util.*;
import java.sql.DriverManager;
/**
 *
 * @author Erick
 */
public class Conexion {

    private static String driver;
    private static String url;
    private static String user;
    private String pass;
    
    public Conexion(){}

    public String getDriver(){
        this.driver = "org.postgresql.Driver";
        return  this.driver;
    }

    public String getUrl(){
        this.url = "jdbc:postgresql://127.0.0.1/alumno?"+"user=" + user + "&password="+pass;
        return  this.url;
    }

    public String getUser(){
        return  this.user;
    }

    public void setUser(String user){
        this.user = user;
    }

    public void setPassword(String pass){
        this.pass = pass;
    }

    public static Connection ConexionBD(){
        Connection con = null;
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url);
        }
        catch(Exception ex)
        {
            ex.getMessage();
        }
        return con;
    }

}

