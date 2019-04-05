package jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
public class datajdbc {
     public static Connection connect(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minor","root","rish");
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    
}
