<%@ page import ="java.sql.*" %>
        <%
            String uyeeposta = request.getParameter("uyeeposta");    
            String uyeparola = request.getParameter("uyeparola");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from uyeprofil where uyeeposta='" + uyeeposta + "' and uyeparola='" + uyeparola + "'");
                if (rs.next()) {
                    session.setAttribute("uyeeposta", uyeeposta);

                    response.sendRedirect("otoparking2/uyepaneli.html");
                } else { 
                    response.sendRedirect("girisyapuye.jsp");
                }
        %>
        
        