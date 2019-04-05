/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.datajdbc;
import java.sql.Timestamp;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rish
 */
public class addemployee extends HttpServlet {
Connection con; PreparedStatement ps;PreparedStatement ps1;PreparedStatement ps2;
           
           
 @Override
    public void init(){
       
    }
    @Override
    public void destroy(){
        try{
        con.close();
        }catch(Exception e){
        }
        
    }
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         HttpSession session=request.getSession();
          String ac=(String)session.getAttribute("admin");
           try{
           
    
        String qr="insert into "+ac+"employee values(?,?,?,?,?,?)";
        con=datajdbc.connect();            
        ps=con.prepareStatement(qr);
        }catch(Exception e){
        }
          
        String employeename=request.getParameter("employeename");
        String contactnumber=request.getParameter("contactnumber");
        String address=request.getParameter("address");
        String email=request.getParameter("email");
        java.sql.Timestamp dateofregistration = new java.sql.Timestamp(new java.util.Date().getTime());
        String password=request.getParameter("password");
       
        try{
        String sr="select * from "+ac+"employee where contactnumber=?";
        ps1=con.prepareStatement(sr);
            ps1.setString(1,contactnumber);
            ResultSet rs=ps1.executeQuery();
            boolean b=rs.next();
           String em="select * from "+ac+"employee where email=?";
        ps2=con.prepareStatement(em);
            ps2.setString(1,email);
               ResultSet rm=ps2.executeQuery();
            boolean e=rm.next();
            if(!e){
               if(!b){ 
        ps.setString(1,employeename);
        ps.setString(2,contactnumber);
        ps.setString(3,address);
        ps.setString(4,email);
        ps.setTimestamp(5,dateofregistration);
        ps.setString(6,password);
        ps.executeUpdate();
        response.sendRedirect("employeesavesuccessfully.jsp");    
                     }
           else{
           response.sendRedirect("useralreadyexist.jsp");
           }
            }else{response.sendRedirect("emailalreadyexist.jsp");
                       
                       }
            
        }catch(Exception e){
           out.print(e);
        }
        
           
    
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
