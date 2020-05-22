<%-- 
    Document   : index
    Created on : 22/05/2020, 08:51:44
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
              
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina JSP 1</title>
        
        <link rel="stylesheet" type="text/css" href="CSS/corIndex.css">
    </head>
        
    <body>

        <%@include file="cabecalho.jsp" %>
        
        
        
     <br>
             <div class="quad">
                 <br>
                
            
            <br>
            <form name="forms1" action="receber.jsp" method="post">
                
                <label for=peso">Peso em Kg</label>
                <input class="form-control form-control-lg" id="peso" name="RePeso" type="number" min="0.1" max="1000" step="0.01" value="" placeholder="Peso" required>
                <br>
                
                <label for=altura">Altura em metros</label>
                <input class="form-control form-control-lg" id="altura" name="ReAltura" type="number" min="0.1" max="5" step="0.01" value="" placeholder="Altura" required>
                <br>
                              
                <center><input type="submit" class="btn btn-primary" name="enviar" value="Enviar"></center>
                
             </form>           
            <br>        
          </div>
     
      <br> 
       
     <script src="JS/jsIndex.js"></script>      
            
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

     
            
    </body>
</html>
