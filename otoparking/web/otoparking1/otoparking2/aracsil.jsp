<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
             
            Connection con;     
 
                String aracid = request.getParameter("id");
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
                String query = "delete from  aracekle where aracid = ?";

                PreparedStatement pst = con.prepareStatement(query);


                pst.setString(1, aracid);
                pst.executeUpdate();

    %>   
    
    <script>
        
          window.location.replace("icerdekiaraclar.jsp");       
        
    </script>