import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.datajdbc;

public class customersavechangesupdateinfo extends HttpServlet {

    Connection con; PreparedStatement ps;
    
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
        PrintWriter out=response.getWriter();
        //reads the data
         try{
             HttpSession session=request.getSession();
          String contactnumberadmin=(String)session.getAttribute("admincontact");
        String qr="update "+contactnumberadmin+"customer set customername=?, contactnumber=?, address=?, email=?,hometown=?,password=? where contactnumber=?";
        con=datajdbc.connect();            
        ps=con.prepareStatement(qr);
        }catch(Exception e){
        }
       String customername=request.getParameter("customername");
        String contactnumber=request.getParameter("contactnumber");
        String address=request.getParameter("address");
        String email=request.getParameter("email");
        String hometown=request.getParameter("hometown");
        String password=request.getParameter("password");
       
        //process
        try{
        ps.setString(7, contactnumber);
        ps.setString(1, customername);
        ps.setString(2, contactnumber);
        ps.setString(3, address);
        ps.setString(4, email);
        ps.setString(5, hometown);
        ps.setString(6, password);
        
        ps.executeUpdate();
        //response
        out.println("<html>");
        out.println("<body>");
        out.println("<h4>Profile Updated</h4>");
        out.println("<h5><a href=customerlogin.jsp>log in</a></h5>");
        }catch(Exception e){
           out.print(e);
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
