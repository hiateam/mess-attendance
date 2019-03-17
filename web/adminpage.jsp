<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String aid=(String)session.getAttribute("admin");
    if(aid==null){
    response.sendRedirect("index.jsp");
    }
   
%>
<html>
    
    <p>hii admin</p> 
    
    
</html>