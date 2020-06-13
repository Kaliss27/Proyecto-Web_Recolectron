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
        <link href="CSS/eventosS.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
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
                        <li><a href="RegistroVisita.jsp">Registra tu visita</a></li>
                        <li><a href="RegistroDR.jsp">Donaciones Recibidas</a></li>
                        <li><a href="RegistroDE.jsp">Donaciones Emitidas</a></li>
                        <li class="active"><a href="Eventos.jsp">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="EQReco.jsp"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Galeria Eventos-->
        <div class="container" id="imagesE">
            <div id="headerE" >
                <center><label id="title">EVENTOS RECO</label></center>
            </div><br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="Imagenes\evento1.jpg" alt="reco1" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="Imagenes\evento3.jpg" alt="reco2" style="width:100%;">
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
        </div><br>
        <div class="container" id="eForm">
            <center><label id="hForm">Registro de Eventos</label></center>
            <form id="eventF">
                <div class="form-group">
                    <label>Titulo del Evento:</label>
                    <input type="text" class="form-control" id="tEvento"><br>
                    <label>Descripción:</label><br>
                    <textarea class="form-control" id="txtD" name="desc" rows="4" cols="50"></textarea><br>
                    <div class="form-inline">
                        <label for="dateRgs">Fecha:</label>
                        <input type="date" class="form-control" id="fechaRgs">
                        <label for="dateRgs">Hora:</label>
                        <input type="time" class="form-control" id="appt" name="appt">
                    </div>
                </div>
                <button id="btnE" class="btn btn-success" type="submit" class="btn btn-default">Registrar Recepción</button>
            </form><br>
            <div class="alert alert-success">
                <strong>Evento registrado</strong> 
            </div>
        </div>
        <div class="container">
                <br><br><br>
        </div>
        <script src="Scripts/eventos.js"></script>
        <!--FOOTER todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>