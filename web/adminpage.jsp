<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String aid=(String)session.getAttribute("admin");
    if(aid==null){
    response.sendRedirect("index.jsp");
    }
   response.setHeader("Cache-Control","no-cache");
   response.setHeader("Cache-Control","no-store");
   response.setHeader("Pragma","no-cache");
   response.setDateHeader("Expires",0);
   %>
<html>
   


    
    <p>hii admin</p> 
    
    <a href="endsession">Logout</a>
</html>
