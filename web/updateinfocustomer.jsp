<%
    String contact=(String)session.getAttribute("customernumber");
    String contactnumberadmin=(String)session.getAttribute("admincontact");
    String qr="select * from "+contactnumberadmin+"customer where contactnumber=?";
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root","rish");
    java.sql.PreparedStatement ps=con.prepareStatement(qr);
    ps.setString(1,contact);
    java.sql.ResultSet rs=ps.executeQuery();
    rs.next();
    String s1=rs.getString(1);
    String s2=rs.getString(2);
    String s3=rs.getString(3);
    String s4=rs.getString(4);
    String s5=rs.getString(5);    
    String s6=rs.getString(6);
    String s7=rs.getString(7);     
%>

<html>
    <body>
        
        <h4>Profile Update Form</h4>
        <hr>
        <form action="customersavechangesupdateinfo" method="get">
            <pre>
            customername         <input type="text" name="customername" value="<%=s1%>" />
            contactnumber        <input type="text" name="contactnumber" value="<%=s2%>"/>
            address              <input type="text" name="address" value="<%=s3%>"/>
            email                <input type="email" name="email" value="<%=s4%>"/> 
            hometown             <input type="text" name="hometown" value="<%=s5%>"/>
            date of registration<input type="text" name="dateofregistration" value="<%=s6%>"/>
            password            <input type="text" name="password" value="<%=s7%>"/>                       
                                <input type="submit" value="Update"/>
            </pre>
        </form>
        <hr>
        <a href="index.jsp">Home</a>
    </body>
</html>
