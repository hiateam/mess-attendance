/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.datajdbc;
import java.sql.Timestamp;

/**
 *
 * @author rish
 */
public class adminregistration extends HttpServlet {
Connection con; PreparedStatement ps;
 @Override
    public void init(){
        try{
        String qr="insert into admininfo values(?,?,?,?,?,?,?)";
        con=datajdbc.connect();            
        ps=con.prepareStatement(qr);
        }catch(Exception e){
        }
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
          java.sql.Timestamp dateofregistration = new java.sql.Timestamp(new java.util.Date().getTime());
        String messname=request.getParameter("messname");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String contactnumber=request.getParameter("contactnumber");
        String address=request.getParameter("address");
        String password=request.getParameter("password");
        //process
        try{
        ps.setString(1,messname);
        ps.setString(2,username);
        ps.setString(3,email);
        ps.setString(4,contactnumber);
        ps.setString(5,address);
        ps.setTimestamp(6,dateofregistration);
        ps.setString(7,password);
        ps.executeUpdate();
    }catch(Exception e){
           out.print(e);
        }
        response.sendRedirect("registrationsuccessful.jsp");
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
