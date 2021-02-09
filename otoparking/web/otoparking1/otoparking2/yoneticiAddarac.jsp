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
        .form2{
            position: absolute;
            background-color: gray;
            top: 25%;
            left: 45%;
            height: 40rem;
            width: 60rem;
            font-size: 20px;
            padding: 20px;
			border-radius: 15px;
        }
        .form-group {
			margin: 16px;
		}

		label {
			display: inline-block;
			margin-bottom: 4px;
		}

		.form-control {
			width: 100%;
			padding: 7px 12px;
			border: 1px solid #ced4da;
			border-radius: 4px;
		}

		.form-control:focus {
			border-color: #80bdff;
			outline: 0;
		}

		.btn {
            font-size: 20px;
            padding: 6px 12px;
            margin-top: 10px;
			border-radius: 4px;
			color: #fff;
			background-color: #858585;
            border: 1px solid #bebebe;
		}

		.btn:hover {
			background-color: #444444;
			border: 1px solid #242629;
		}

		.col-25 {
			float: left;
			width: 25%;
		}

		.col-75 {
			float: left;
			width: 70%;
		}
		.clearfix:after {
			content: "";
			display: block;
			clear: both;
        }
        .is-success{
            border-color: #acacac;
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
                            <a class="a-cıkısyap" href="isletmecikis.jsp">cikis Yap</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="yanmenu">
            <img class="yanmenu-logo" src="otoparking3/img/Logo111.png" alt="">
            <ul class="yanbar-ul">
                <li class="yanbar-li"><a class="yanbar-a unactive" href="yoneticipaneli.html">Yönetici Paneli</a></li>
                <li class="yanbar-li"><a class="yanbar-a" href="yoneticiAddarac.jsp">Araç Ekle</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="icerdekiaraclar.jsp">İçerdeki Araçlar</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="uyeninEkledikleri.jsp">Uyelerin Park Bilgileri</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="isletmeprofil.html">Profil</a></li>
            </ul>
        </div>
<%   
        Connection con;     
        if(request.getMethod().compareToIgnoreCase("post")==0)
        {
                try
                {
                        String aracid = request.getParameter("aracid");
                        String aracplaka = request.getParameter("aracplaka");
                        String aracadsoyad = request.getParameter("aracadsoyad");
                        String aractel = request.getParameter("aractel");
                        String aractarih = request.getParameter("aractarih");
                        String aracsaat = request.getParameter("aracsaat");
                         Class.forName("com.mysql.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
                         String query = "INSERT INTO aracekle(aracid,aracplaka,aracadsoyad,aractel,aractarih,aracsaat) VALUES (?,?,?,?,?,?)";

                        PreparedStatement pst = con.prepareStatement(query);

                        pst.setString(1, aracid);
                        pst.setString(2, aracplaka);
                        pst.setString(3, aracadsoyad);
                        pst.setString(4, aractel);
                        pst.setString(5, aractarih);
                        pst.setString(6, aracsaat);

                        pst.executeUpdate();
                }catch(Exception ex){
                        ex.printStackTrace();

                }
        }
%>       
<div class="form-aracekle">
            <form id="form" method="post" class="form2" action="yoneticiAddarac.jsp">

                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="plaka">ID</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="aracid" id="aracid" class="form-control is-success" required placeholder="ID Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="plaka">Arac Plakasi:</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="aracplaka" id="aracplaka" class="form-control is-success" required placeholder="Plaka Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="namesurname">Adi Soyadi:</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="aracadsoyad" id="aracadsoyad" class="form-control is-success" required placeholder="Ad Soyad Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="telefon">Telefon:</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="aractel" id="aractel" class="form-control is-success" required placeholder="Telefon Numarası Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="tarih">Giris Tarihi :</label>
                    </div>
                    <div class="col-75">
                        <input type="date" name="aractarih" id="aractarih" class="form-control is-success" required placeholder="Giriş Tarihi Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix" >
                    <div class="col-25">
                        <label for="saat">Saat:</label>
                    </div>
                    <div class="col-75">
                        <input type="time" name="aracsaat" id="aracsaat" class="form-control is-success" required placeholder="Giriş saatini Giriniz.">
                    </div>
                </div>       
                <input type="submit" value="EKLE" class="btn" style="margin-left: 25%;">
            </form>
        </div>
   
    </div>

</body>
</html>