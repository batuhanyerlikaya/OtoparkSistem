<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otoparking</title>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="otoparking3/style.css">
    <script src="https://kit.fontawesome.com/3b8ec141e1.js" crossorigin="anonymous"></script>
     <style>
        body{
            background-color: lightgrey ;
        }
        table{
            position: absolute;
            top: 25%;
            left: 28%;
            font-size: 25px;
			border-radius: 15px;
            width: 66%;
            text-align: center;
        }
        td{
            padding:5px 30px;
            border: 1px solid black;
            border-radius: 15px;
        }
        th{
            padding:5px 30px;
            border: 1px solid black;
            border-radius: 15px; 
        }
        a{
            text-decoration: none;
            color: black;
        }
        .cıkısyap-alt-li{
    padding: 0;
    list-style: none;
    display: block;
}

.a-cıkısyap{
    text-decoration: none;
    height: 20px;
    line-height: 20px;
    color: black;
    padding: 5px 10px;
    background-color: rgb(153, 149, 149);
    border-radius: 5px;
}
.a-cıkısyap:hover{
    background-color: rgb(190, 0, 0);
}
.cıkısyap-ul{
    display: none;
}
.ustbar-icon:hover .cıkısyap-ul {
    display: block;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="ustbar">
            <ul class="ustbar-icon">
                <li class="cıkısyap-ust-li">
                    <a class="ustbar-icon-a" style="color: black;" href="#"><i class="fas fa-user-tie"> </i></a> 
                    <ul class="cıkısyap-ul">
                        <li class="cıkısyap-alt-li" style="font-size: 15px;">
                            <a class="a-cıkısyap" href="isletmecikis.jsp">Çıkış Yap</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="yanmenu">
            <img class="yanmenu-logo" src="otoparking3/img/Logo111.png" alt="">
            <ul class="yanbar-ul">
                <li class="yanbar-li"><a class="yanbar-a unactive" href="yoneticipaneli.html">Yönetici Paneli</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="yoneticiAddarac.jsp">Araç Ekle</a></li>
                <li class="yanbar-li"><a class="yanbar-a " href="icerdekiaraclar.jsp">İçerdeki Araçlar</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="uyeninEkledikleri.jsp">Uyelerin Park Bilgileri</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="isletmeprofil.html">Profil</a></li>
            </ul>
        </div>
        <div>
            <table >
                <thead>
                <tr>
                    <th>id</th>
                    <th>plaka</th>
                    <th>ad soyad</th>
                    <th>telefon</th>
                    <th>tarih</th>
                    <th>saat</th>
                    <th colspan="2">Çıkış</th>
                    
                </tr>
                
                </thead>
                <tbody>              
                                <% 
                                    Connection con;
                                    PreparedStatement pst;
                                    ResultSet rs;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");

                                    String query = "Select * from aracekle";
                                    pst = con.prepareStatement(query);
                                    rs = pst.executeQuery();

                                    while(rs.next()){
                                %>
                                <tr>
                                    <<th scope="row"><%= rs.getString("aracid") %></th>
                                    <td><%=rs.getString("aracplaka")%></td>
                                    <td><%=rs.getString("aracadsoyad")%></td>
                                    <td><%=rs.getString("aractel")%></td>
                                    <td><%=rs.getString("aractarih")%></td>
                                    <td><%=rs.getString("aracsaat")%></td>
                                    
                                    <td class="text-right">
                                        <a href="aracduzenle.jsp?id=<%=rs.getString("aracid") %>" class="fas fa-edit"><i></i></a>
                                        <a href="aracsil.jsp?id=<%=rs.getString("aracid") %>" class="fas fa-times"><i></i></a>
                                    </td>
 
                                </tr>
                                <% 
                                    }
                                %>  
       
                                </tbody>

            </table>
        </div>
     
    </div>

</body>
</html>