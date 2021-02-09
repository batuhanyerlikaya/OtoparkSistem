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
    <title>Kayıt Ol</title>
    <style>
        .form2{
            position: absolute;
            background-color: gray;
            top: 25%;
            left: 45%;
            height: 55rem;
            width: 50rem;
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
                        String isletmead = request.getParameter("isletmead");
                        String ad = request.getParameter("ad");
                        String soyad = request.getParameter("soyad");
                        String kapasite = request.getParameter("kapasite");
                        String eposta = request.getParameter("eposta");
                        String telefon = request.getParameter("telefon");
                        String il = request.getParameter("il");
                        String ilce = request.getParameter("ilce");
                        String parola = request.getParameter("parola");



                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/otoparking","root","batus1996");
                        String query = "INSERT INTO isletmeprofil(isletmead,ad,soyad,kapasite,eposta,telefon,il,ilce,parola) VALUES (?,?,?,?,?,?,?,?,?)";

                        PreparedStatement pst = con.prepareStatement(query);

                        pst.setString(1, isletmead);
                        pst.setString(2, ad);
                        pst.setString(3, soyad);
                        pst.setString(4, kapasite);
                        pst.setString(5, eposta);
                        pst.setString(6, telefon);
                        pst.setString(7, il);
                        pst.setString(8, ilce);
                        pst.setString(9, parola);

                        pst.executeUpdate();

                       
   			}catch(Exception ex){
   				ex.printStackTrace();
   				
   			}
   		}
            %> 
 
        <form id="form" method="post" class="form2" action="kayitolisletme.jsp">
            
            
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Isletme Adi:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="isletmead" id="isletmead" class="form-control is-success" required placeholder="İşletmenizin Adını Giriniz.">
                </div>
            </div>
            
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Ad:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="ad" id="ad" class="form-control is-success" required placeholder="Adınızı Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Soyad:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="soyad" id="soyad" class="form-control is-success" required placeholder="Soyadadınızı Giriniz.">
                </div>
            </div>

            
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Araç Kapasitesi:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="kapasite" id="kapasite" class="form-control is-success" required placeholder="İşletmanizin Araç Kapasitesini Giriniz.">
                </div>
            </div>
            
            
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>E-Posta:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="eposta" id="eposta" class="form-control is-success" required placeholder="E-posta Adresinizi Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Telefon:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="telefon" id="telefon" class="form-control is-success" required placeholder="Telefon Nunaranızı Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Il:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="il" id="il" class="form-control is-success" required placeholder="İlinini Giriniz.">
                </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Ilçe:</label>
                </div>
                <div class="col-75">
                    <input type="text" name="ilce" id="ilce" class="form-control is-success" required placeholder="İlçenizi Giriniz.">
                </div>
            </div>
    
            
            <div class="form-group clearfix">
                <div class="col-25">
                    <label>Parola:</label>
                </div>
                <div class="col-75">
                    <input type="password" name="parola" id="parola" class="form-control is-success" required placeholder="Parolanızı Giriniz.">
                </div>
            </div>
            
            <p>kayıt formunu "gönder" butonuyla gönderdikten sonra giriş yapabilirsiniz</p>
            <input type="submit" class="btn btn-primary" style="margin-left: 25%;">
            <a class="btn" href="../index.html" style="text-decoration: none" >girip yap</a>
        </form>
        
    </header>
</body>
</html>