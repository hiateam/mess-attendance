import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.datajdbc;


/**
 *
 * @author rish
 */
public class checkcustomer extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         {  String contactnumberadmin=request.getParameter("contactnumberadmin");
            String contactnumbercustomer=request.getParameter("contactnumbercustomer");
            String password=request.getParameter("password");
            String qr="select * from "+contactnumberadmin+"customer where contactnumber=? and password=?";
            Connection con=jdbc.datajdbc.connect();
            try{
            PreparedStatement ps=con.prepareStatement(qr);
            ps.setString(1,contactnumbercustomer);
            ps.setString(2,password);
            ResultSet rs=ps.executeQuery();
            boolean b=rs.next();
            if(b){
                String username=rs.getString(1);
                HttpSession session=request.getSession();
                session.setAttribute("customername",username);
                session.setAttribute("customernumber",contactnumbercustomer);
                response.sendRedirect("customerpage.jsp");
            }else{
                response.sendRedirect("adminwronginfo.jsp");
            }
            con.close();
            }catch(Exception e){out.println("contact number of mess is wrong");}
            
            
            
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