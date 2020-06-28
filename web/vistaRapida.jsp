<%-- 
    Document   : vistaRapida
    Created on : 4/06/2020, 09:57:32 PM
    Author     : karen
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECOLECTRÓN</title>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estiloReco.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/vistaRapidaS.css" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <link rel="icon" type="image/png" href="Imagenes/logo_recoUV.jpg" sizes="16x16">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
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
                        <li><a href="#" id="ini">Inicio</a></li>
                        <li><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipo RECO
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="active"><a href="#">Vista Rápida</a></li>
                                <li><a href="inventarioReco.jsp">Inventario</a></li>
                                <li><a href="actividades.jsp">Actividades</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-sm-3 sidenav">
                    <div id="dUser">
                        <label>Bienvenido -Nombre Personal</label><br>
                        <label id="gicon" class="glyphicon glyphicon-user"></label><br>
                        <label>Usuario:</label>
                        <label id="tuser">Administrador</label><br>
                        <label>Fecha:</label>
                        <%
                            Date dNow = new Date( );
                            SimpleDateFormat ft =new SimpleDateFormat ("E dd.MM.yyyy");
                            out.print( "<label align=\"center\">" + ft.format(dNow) + "</label>");
                        %>
                    </div>
                    <br>
                    <div id="imps">
                        <label>Impacto Sustentable</label><br>
                        <label id="giconS" class="glyphicon glyphicon-globe"></label>
                    </div>
                    <br>
                </div>
                <div class="col-sm-4 form-inline" id="one">
                </div>
            </div><br><br>
        </div>
        <!--Footer todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>