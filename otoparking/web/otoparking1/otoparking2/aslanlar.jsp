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
                            <a class="a-cıkısyap" href="uyecikis.jsp">Çıkış Yap</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="yanmenu">
            <img class="yanmenu-logo" src="otoparking3/img/Logo111.png" alt="">
            <ul class="yanbar-ul">
                <li class="yanbar-li"><a class="yanbar-a unactive" href="uyepaneli.html">Profil</a></li>
                <li class="yanbar-li"><a class="yanbar-a " href="uyeotoparklar.html">Otoparklar</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="iletisimUye.html">otopark adresleri - iletisim</a></li>
                
            </ul>
        </div>
<%   
        Connection con;     
        
        if(request.getMethod().compareToIgnoreCase("post")==0)
        {
                try
                {
                        String uyeId = request.getParameter("uyeId");
                        String uyeAd = request.getParameter("uyeAd");
                        String uyeSoyad = request.getParameter("uyeSoyad");
                        String aracModel = request.getParameter("aracModel");
                        String uyePlaka = request.getParameter("uyePlaka");
                        String uyeTel = request.getParameter("uyeTel");


                         Class.forName("com.mysql.jdbc.Driver");
                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
                         String query = "INSERT INTO aslanlar(uyeId,uyeAd,uyeSoyad,aracModel,uyePlaka,uyeTel) VALUES (?,?,?,?,?,?)";

                        PreparedStatement pst = con.prepareStatement(query);

                         pst.setString(1, uyeId);
                        pst.setString(2, uyeAd);
                        pst.setString(3, uyeSoyad);
                        pst.setString(4, aracModel);
                        pst.setString(5, uyePlaka);
                        pst.setString(6, uyeTel);

                        pst.executeUpdate();

                }catch(Exception ex){
                        ex.printStackTrace();

                }
        }
%>       
<div class="form-aracekle">
            <form id="form" method="post" class="form2" action="aslanlar.jsp">

               
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="plaka">Arac Sahibi Adi</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="uyeAd" id="uyeAd" class="form-control is-success" required placeholder="Adinizi Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="namesurname">Arac Sahibi Soydi</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="uyeSoyad" id="uyeSoyad" class="form-control is-success" required placeholder="Soyadinizi Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="telefon">Arac Modeli</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="aracModel" id="aracModel" class="form-control is-success" required placeholder="Aracinizin Modelini Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix">
                    <div class="col-25">
                        <label for="telefon">Arac Plakasi</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="uyePlaka" id="uyePlaka" class="form-control is-success" required placeholder="Aracinizin Plakasini Giriniz.">
                    </div>
                </div>
                <div class="form-group clearfix" >
                    <div class="col-25">
                        <label for="telefon">Arac Sahibinin Numarasi</label>
                    </div>
                    <div class="col-75">
                        <input type="text" name="uyeTel" id="uyeTel" class="form-control is-success" required placeholder="Telefon Numaranizi Giriniz.">
                    </div>
                </div>       
                <input type="submit" value="EKLE" class="btn" style="margin-left: 25%;">
            </form>
        </div>


   
        
        
        
        
        
    </div>









</body>
</html>