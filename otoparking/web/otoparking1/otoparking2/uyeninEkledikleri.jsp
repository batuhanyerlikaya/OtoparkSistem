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
            font-size: 35px;
            border-radius: 15px;
            width: 66%;
            text-align: center;
        }
        th{
            padding:55px 30px;
            border: 1px solid black;
            border-radius: 15px; 
        }
        .fa-car{
            font-size: 100px;
            display: block;
            color: rgb(17, 129, 2);
        }
        #fa-car1{
            font-size: 100px;
            display: block;
            color: blue;
        }
        #fa-car2{
            font-size: 100px;
            display: block;
            color: red;
        }
        #th1{
            background-color: gray;
            color: rgb(17, 129, 2);
        }
        #th2{
            background-color: gray;
            color: blue;
        }
        #th3{
            background-color: gray;
            color: red;
        }
        a{
            text-decoration: none;
        }
        
        
        .cikisyap-alt-li{
    padding: 0;
    list-style: none;
    display: block;
}

.a-cikisyap{
    text-decoration: none;
    height: 20px;
    line-height: 20px;
    color: black;
    padding: 5px 10px;
    background-color: rgb(153, 149, 149);
    border-radius: 5px;
}
.a-cikisyap:hover{
    background-color: rgb(190, 0, 0);
}
.cikisyap-ul{
    display: none;
}
.ustbar-icon:hover .cikisyap-ul {
    display: block;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="ustbar">
            <ul class="ustbar-icon">
                <li class="cikisyap-ust-li">
                    <a class="ustbar-icon-a" style="color: black;" href="#"><i class="fas fa-user-tie"> </i></a> 
                    <ul class="cikisyap-ul">
                        <li class="cikisyap-alt-li" style="font-size: 15px;">
                            <a class="a-cikisyap" href="isletmecikis.jsp">Cikis Yap</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <a href="yoneticiAddarac.jsp"></a>
        <div class="yanmenu">
            <img class="yanmenu-logo" src="otoparking3/img/Logo111.png" alt="">
            <ul class="yanbar-ul">
                <li class="yanbar-li"><a class="yanbar-a unactive" href="yoneticipaneli.html">Yönetici Paneli</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="yoneticiAddarac.jsp">Araç Ekle</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="icerdekiaraclar.jsp">Içerdeki Araçlar</a></li>
                <li class="yanbar-li"><a class="yanbar-a " href="uyeninEkledikleri.jsp">Uyelerin Park Bilgileri</a></li>
                <li class="yanbar-li"><a class="yanbar-a unactive" href="isletmeprofil.html">Profil</a></li>
            </ul>
                
        </div>
        <div>
            <table>
                <tr>
                    <th id="th1"><a href="mevlanaOtoparki.jsp"><i class="fas fa-car"></i></a><p>Mevlana</p> <p>200</p> </th> 
                    <th id="th2"><a href="parodiOtoparki.jsp"><i class="fas fa-car" id="fa-car1"></i></a><p>Parodi</p> <p>30</p> </th>
                    <th id="th3"><a href="aslanlarOtoparki.jsp"><i class="fas fa-car" id="fa-car2"></i></a><p>aslanlar</p> <p> 1000</p> </th>
                </tr>
                <tr>
                    <th id="th1"> <a href="merinosOtoparki.jsp"><i class="fas fa-car"></i></a><p>merinos</p> <p>12</p> </th> 
                    <th id="th2"><a href="mutluOtoparki.jsp"><i class="fas fa-car" id="fa-car1"></i></a><p>mutlu</p> <p>30</p> </th>
                    <th id="th3"><a href="canliOtoparki.jsp"><i class="fas fa-car" id="fa-car2"></i></a><p>canli</p> <p> 1000</p> </th>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>