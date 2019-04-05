/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.datajdbc;


public class forgetpasswordcheck extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String messname=request.getParameter("messname");
            String email=request.getParameter("email");
            String contactnumber=request.getParameter("contactnumber");
            String qr="select * from admininfo where messname=? and email=? and contactnumber=?";
            Connection con=jdbc.datajdbc.connect();
            try{
            PreparedStatement ps=con.prepareStatement(qr);
            ps.setString(1,messname);
            ps.setString(2,email);
            ps.setString(3,contactnumber);
            ResultSet rs=ps.executeQuery();
            boolean b=rs.next();
            if(b){
           String pass = rs.getString(7);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet forgetpasswordcheck</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Your password is "+pass+"</h1>");
            out.println("</body>");
            out.println("</html>");
            }else{
                response.sendRedirect("adminwronginfo.jsp");
            }
            con.close();
            }catch(Exception e){out.println(e);}
            }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
