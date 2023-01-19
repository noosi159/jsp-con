<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
 <%
    Connection con = null;
    Statement s =null;
    String url = "jdbc:mysql://localhost/db_user";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
        if (con !=null) {
            out.println ("Database Connect");
        } else {
              out.println ("Database Connect Failed");
        }
    } catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    }

 %>