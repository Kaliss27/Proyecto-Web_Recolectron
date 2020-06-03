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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <link rel="icon" type="image/png" href="Imagenes/logo_recoUV.jpg" sizes="16x16">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <!--Código de la barra de navegación del sitio-->
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
                        <li class="active"><a href="RegistroVisita.jsp">Registra tu visita</a></li>
                        <li><a href="RegistroDR.jsp">Donaciones Recibidas</a></li>
                        <li><a href="RegistroDE.jsp">Donaciones Emitidas</a></li>
                        <li><a href="Eventos.jsp">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="EQReco.jsp"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Código para el formulario de visitas-->
        <div class="container">
            <div class="row content">
                <div class="col-lg-10">
                        <label id="headerRV">¡Registra tu vistita al recolectrón!</label>
                        <form method="POST">
                            <div class="form-group">
                                <label for="matricula">Mátricula UV:</label>
                                <input type="text" class="form-control" id="matricula" name="mat" placeholder="Ingresa tu mátricula">
                            </div>
                            <div class="form-group">
                                <label for="nameC">Nombre:</label>
                                <input type="text" class="form-control" id="pwd" name="nombre" placeholder="Ingresa tu nombre">
                            </div>
                            <div class="form-inline">
                                <label for="txtPE">Selecciona tu Programa Educativo:</label>
                                <select class="form-control" id="selectPE" name="PEs">
                                    <option value="--">Selecciona--</option>
                                </select>
                                <label for="txtTV">Motivo de Visita:</label>
                                <select class="form-control" id="selectTV" name="MVs">
                                    <option value="--">Selecciona--</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dateRgs">Fecha:</label>
                                <input type="date" class="form-control" id="fechaRgs" name="fecha">
                            </div>
                            <button class="btn btn-success" type="submit" class="btn btn-default" name="accion" value="Registrar visita">Registrar visita</button>
                        </form>  
                </div>
                <!--Area de imagenes de visitas-->
                <div class="col-lg-2 text-right">
                    <div class="well">
                         <img src="Imagenes\visita1.jpg" class="img-responsive" alt="Image1">
                    </div>
                    <div class="well">
                        <img src="Imagenes\visita2.jpg" class="img-responsive" alt="Image2">
                    </div>
                </div>
            </div>
        </div>
        <!--FOOTER todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>