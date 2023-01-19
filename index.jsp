<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="connect.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        try{
            s = con.createStatement();
            String sql ="SELECT * FROM  member ";
            ResultSet result = s.executeQuery(sql);
            while(result.next()){
        
    %>
    <h1><%=result.getString("user_id")%></h1>
    <h1><%=result.getString("username")%></h1>
    <h1><%=result.getString("password")%></h1>

        <%
        }
        con.close();
        } catch(Exception e) {
        e.printStackTrace();
    }
        %>
</body>
</html>