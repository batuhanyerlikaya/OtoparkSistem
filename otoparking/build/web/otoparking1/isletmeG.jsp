<%@ page import ="java.sql.*" %>
        <%
            String eposta = request.getParameter("eposta");    
            String parola = request.getParameter("parola");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from isletmeprofil where eposta='" + eposta + "' and parola='" + parola + "'");
                if (rs.next()) {
                    session.setAttribute("eposta", eposta);

                    response.sendRedirect("otoparking2/yoneticipaneli.html");
                } else {
                    response.sendRedirect("girisyapisletme.jsp");
                }
        %>