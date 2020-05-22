<%-- 
    Document   : cabecalho
    Created on : 22/05/2020, 12:31:48
    Author     : victo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <% //Gera data e hora
        Date date = new Date();
        
        SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");    
     
        String dataFormat = fmt.format(date);    
    
   %>
   <div id="dataHora">
       <h1>Cálculo de IMC </h1> 
          <h2>(índice de massa corpórea)</h2>
            <p><%=dataFormat%></p>
   </div>
    </body>
</html>
