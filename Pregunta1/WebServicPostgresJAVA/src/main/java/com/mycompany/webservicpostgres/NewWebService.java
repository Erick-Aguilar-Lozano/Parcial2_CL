/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.webservicpostgres;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

import java.sql.Connection;
import java.util.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
/**
 *
 * @author Erick
 */
@WebService(serviceName="NewWebService")
public class NewWebService {

    /** This is a sample web service operation */
    @WebMethod(operationName="hello")
    public String hello(@WebParam(name="name") String txt) {
        return "Hello "+txt+" !";
    }

    @WebMethod(operationName="retornaUsuario")//retornaUsuario
    public String retornaUsuario(@WebParam(name="ci") String ci) throws Exception {
        Connection con = null;
        String sql;
        Statement smt = null;
        ResultSet rs = null;
        String nombres = null;
        Conexion conecta = new Conexion();
        conecta.getDriver();
        conecta.setUser("postgres");
        conecta.setPassword("sesamo");
        conecta.getUrl();
        try{
            con = Conexion.ConexionBD();
            sql = ("SELECT nombre FROM datos WHERE ci='"+ ci +"';");
            smt = con.createStatement();
            rs = smt.executeQuery(sql);
            while (rs.next()) {
            nombres=rs.getString(1);
            }
        }
        catch(Exception ex){
            throw new Exception(ex);
        }
        finally{
            try{
                if(rs != null) rs.close();
                if(smt != null) smt.close();
                if(con != null) con.close();
            }catch(SQLException esql){
                throw new Exception(esql);
             }
        }
        return nombres;
    }
}
