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
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="otoparking2/otoparking3/style.css">
    <title>Üye Kayıt ol</title>
    <style>
        .form2{
            position: absolute;
            background-color: gray;
            top: 20%;
            left: 45%;
            height: 60rem;
            width: 40rem;
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
    <header class="header">
        <div class="nav">
            <img class="nav-logo" src="otoparking2/otoparking3/img/Logo11.png" alt="">
        </div>
        <%   
                Connection con;   
                if(request.getMethod().compareToIgnoreCase("post")==0)
   		{
                    try
                    {
                        String uyead = request.getParameter("uyead");
                        String uyesoyad = request.getParameter("uyesoyad");
                        String uyeplaka = request.getParameter("uyeplaka");
                        String aracmarka = request.getParameter("aracmarka");
                        String aracmodel = request.getParameter("aracmodel");
                        String uyetelefon = request.getParameter("uyetelefon");
                        String uyeil = request.getParameter("uyeil");
                        String uyeilce = request.getParameter("uyeilce");
                        String uyeeposta = request.getParameter("uyeeposta");
                        String uyeparola = request.getParameter("uyeparola");
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
                        String query = "INSERT INTO uyeprofil(uyead,uyesoyad,uyeplaka,aracmarka,aracmodel,uyetelefon,uyeil,uyeilce,uyeeposta,uyeparola) VALUES (?,?,?,?,?,?,?,?,?,?)";

                        PreparedStatement pst = con.prepareStatement(query);

                        pst.setString(1, uyead);
                        pst.setString(2, uyesoyad);
                        pst.setString(3, uyeplaka);
                        pst.setString(4, aracmarka);
                        pst.setString(5, aracmodel);
                        pst.setString(6, uyetelefon);
                        pst.setString(7, uyeil);
                        pst.setString(8, uyeilce);
                        pst.setString(9, uyeeposta);
                        pst.setString(10, uyeparola);

                        pst.executeUpdate();
   			}catch(Exception ex){
   				ex.printStackTrace();
   				
   			}
   		}
            %> 
        <form id="form" method="post" class="form2" action="kayitoluye.jsp">
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="name">Ad:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="uyead" id="uyead" class="form-control is-success" required placeholder="Adınızı Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="surname">Soyad:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="uyesoyad" id="uyesoyad" class="form-control is-success" required placeholder="Soyadınızı Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="aracplaka">Araç Plakasi:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="uyeplaka" id="uyeplaka" class="form-control is-success" required placeholder="Aracınızın Plakasını Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="aracmarka">Araç Marka:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="aracmarka" id="aracmarka" class="form-control is-success" required placeholder="Aracınızın markasını Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="aracmodel">Araç Model:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="aracmodel" id="aracmodel" class="form-control is-success" required placeholder="Aracınızın Modelini Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="telefon">Telefon:</label>
                </div>
                <div class="col-75">
                    <input type="tel" name="uyetelefon" id="uyetelefon" class="form-control is-success" required placeholder="Telefon Nunaranızı Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="city">il:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="uyeil" id="uyeil" class="form-control is-success" required placeholder="ilinini Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="area">ilçe:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="uyeilce" id="uyeilce" class="form-control is-success" required placeholder="ilçenizi Giriniz.">
                </div>
            </div>
    
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="email">E-Posta:</label>
                </div>
                <div class="col-75">
                    <input type="email" name="uyeeposta" id="uyeeposta" class="form-control is-success" required placeholder="E-posta Adresinizi Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label for="password">Parola:</label>
                </div>
                <div class="col-75">
                    <input type="password" name="uyeparola" id="uyeparola" class="form-control is-success" required placeholder="Parolanızı Giriniz.">
                </div>
            </div>
            <p>kayıt formunu "gönder" butonuyla gönderdikten sonra giriş yapabilirsiniz</p>
            <input type="submit" class="btn" style="margin-left: 25%;">
            <a class="btn" href="../index.html" style="text-decoration: none" >girip yap</a>
        </form>
    </header>
</body>
</html>