<%-- 
    Document   : index
    Created on : 27/04/2020, 05:01:17 PM
    Author     : karen
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECOLECTRÓN</title>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estiloReco.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/EQStyle.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/Drecibidas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
        <script src="Scripts/eventos.js" type="text/javascript"></script>
        <script src="Scripts/visitas.js" type="text/javascript"></script>
        <link rel="icon" type="image/png" href="Imagenes/logo_recoUV.jpg" sizes="16x16">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--NAVBAR-->
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img class="img-circle" alt="Brand" src="Imagenes\logo_recoUV.jpg" width="30" height="30"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Contenedor para el formulario y carousel-->
        <div class="container">
            <div class="row content">
                <!--Espacio destinado para el formulario-->
                <div class="col-lg-8 text left">
                    <center><label id="lhlogin">ACCESO</label></center>
                    <form action="User_Login" method="POST" id="my-form">
                        <div class="form-group">
                            <label for="uname">Nombre de Usuario:</label>
                            <input type="text" class="form-control" id="usu" placeholder="Ingresa tu nombre de usuario" name="uname" required><br>
                            <label for="psw">Contraseña:</label>
                            <input type="password" class="form-control" id="pass" placeholder="Ingresa tu contraseña" name="psw" required>
                            <br><br>
                            <input id="login" name="ACCION" class="btn btn-success" type="submit" class="btn btn-default" value="Entrar">
                        </div>
                    </form>
                    <br><br>
                </div>
                <!--Espacio destinado para el carousel-->
                <div class="col-lg-4 sidenav">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="Imagenes\logo_recoUV.jpg" alt="reco1" style="width:100%;">
                            </div>
                            <div class="item">
                                <img src="Imagenes\eq1.jpg" alt="reco2" style="width:100%;">
                            </div>
                            <div class="item">
                                <img src="Imagenes\eq2.jpg" alt="reco2" style="width:100%;">
                            </div>
                            <div class="item">
                                <img src="Imagenes\eq3.jpg" alt="reco2" style="width:100%;">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Anterior</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Siguiente</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!--Footer todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer><br><br>
    </body>
</html>