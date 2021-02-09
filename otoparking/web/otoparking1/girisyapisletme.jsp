<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otoparking</title>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="otoparking2/otoparking3/style.css">
    <style>
        #form1{
            background-size: cover;
            background-color: gray;
            position: absolute;
            width: 50rem;
            height: 40rem;
            top: 30%;
            left: 46%;
            border-radius: 15px;
        } 
        
        #formGiris{
            margin: 70px;
        }
        .form-group {
            margin-bottom: 15px;
            font-size: 20px;
		}

		label {
			display: inline-block;
            margin-bottom: 4px;
		}

		.form-control {
			width: 100%;
			padding: 12px 12px;
			border: 1px solid #ced4da;
			border-radius: 4px;
		}

		.form-control:focus {
			border-color: #80bdff;
			outline: 0;
		}

		.btn {
            
            margin-top: 16px;
			padding: 9px 18px;
			border-radius: 4px;
			color: #fff;
			background-color: #858585;
			border: 1px solid #bebebe;
		}

		.btn:hover {
			background-color: #444444;
			border: 1px solid #242629;
		}
	
		.is-success{
			border-color: #acacac;
        }
        .parolamiunuttum{
            font-size: 15px;
            color: black;
            float: right;
        }

    </style>
</head>
<body>
    <header class="header" >
        <div class="nav">
            <img class="nav-logo" src="otoparking2/otoparking3/img/Logo11.png" alt="">
        </div>

        <form id="form1" action="isletmeG.jsp">
            <div id="formGiris">
                <div class="form-group">
                    <label for="email">E-Posta :</label>
                    <input type="text" name="eposta" id="eposta" class="form-control is-success" required placeholder="E-posta Adresinizi Giriniz.">
                </div>
                <div class="form-group">
                    <label for="password">Parola : </label>
                    <input type="password" name="parola" id="parola" class="form-control is-success" required placeholder="Parolanizi Giriniz.">
                </div>
                <div>
                    <a class="parolamiunuttum" href="#">>>parolami unuttum</a>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn">
                </div>
            </div>
                
        </form>

    </header>
</body>
</html>