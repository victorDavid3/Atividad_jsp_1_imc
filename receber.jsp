<%-- 
    Document   : jspIndex
    Created on : 16/05/2020, 10:09:34
    Author     : victo
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date" %>
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
      
      <%!
      
    public class Dados {
    
    private float peso = 0;  
    private float altura = 0;
    private float IMC = 0;
    private String resp = "";
    
    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }
    
        public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }
    
    public float getIMC() {
        return IMC;
    }

    public void setIMC(float IMC) {
        this.IMC = IMC;
    }
    
    public String getResp() {
        return resp;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }
    
}
      %>
     
      <%
          Dados d = new Dados();
     %>
      

    <% 
          
   //Captura os valores do formulário   
   String p = (request.getParameter("RePeso"));
   d.setPeso(Float.parseFloat(p));
   
   String a = (request.getParameter("ReAltura"));
   d.setAltura(Float.parseFloat(a));
  
   //cálculo
   d.setIMC((d.getPeso()/(d.getAltura()*d.getAltura())));
  
   
   //comparação de IMC
   String resposta = "";
   float imcC = d.getIMC();
   
   if(imcC<16){
       resposta = "Magreza grave";
   } else if(imcC<17){
       resposta = "Magreza moderada";
   }else if(imcC<18.5){
       resposta = "Magreza leve";
   } else if(imcC<25){
       resposta = "Saudável";
   }else if(imcC<30){
       resposta = "Sobrepeso";
   }else if(imcC<35){
       resposta = "Obesidade Grau I";
   }else if(imcC<40){
       resposta = "Obesidade Grau II (severa)";
   }else{
       resposta = "Obesidade Grau III (mórbida)";
   }
   
    d.setResp(resposta);

     %>
      
       
   <br>
   <div class="quad">
       
    <br>
    <center>
  
   
   <p>Peso: <%=d.getPeso()%></p>
   <p>Altura: <%=d.getAltura()%> </p>
   <p>IMC: <%=d.getIMC()%></p>
   <p>Situação: <%=d.getResp()%></p>
   
   <br>
   <h2></h2>
  
   </center>
   <br>
</div>
   

   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
         
    </body>
</html>
