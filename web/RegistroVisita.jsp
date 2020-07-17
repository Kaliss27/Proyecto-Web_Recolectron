<%-- 
    Document   : index
    Created on : 27/04/2020, 05:01:17 PM
    Author     : karen
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECOLECTRÓN</title>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estiloReco.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/visitasS.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/Drecibidas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
        <script src="Scripts/eventos.js" type="text/javascript"></script>
        <script src="Scripts/vista_login.js" type="text/javascript"></script>
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
                        <li><a href="index.jsp" id="ini">Inicio</a></li>
                        <li class="active"><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" id="vistaLogin"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                    <!--Dropdown: Mostrar cuando se tengan privilegios-->
                    <ul id="nb-cp" class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipo RECO
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="active"><a href="#">Vista Rápida</a></li>
                                <li><a href="#" id="form_inventario">Inventario</a></li>
                                <li><a href="actividades.jsp">Actividades</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Código para el formulario de visitas-->
        <div class="container">
            <div class="row">
                <div id="content1" class="col-sm-10">
                    <div id="headerE" >
                        <center><label id="title">¡Registra tu visita al recolectrón!</label></center>
                    </div><br>
                    <form method="POST" id="my-form">
                            <div class="form-group">
                                <label for="matricula">Mátricula UV:</label>
                                <input type="text" class="form-control" id="matricula" name="mat" placeholder="Ingresa tu mátricula">
                            </div>
                            <div class="form-group">
                                <label for="nameC">Nombre:</label>
                                <input type="text" class="form-control" id="nom" name="nombre" placeholder="Ingresa tu nombre">
                            </div>
                            <div class="form-group">
                                <label for="apaterno">Apellido Paterno:</label>
                                <input type="text" class="form-control" id="appat" name="appaterno" placeholder="Ingresa tu apellido paterno">
                            </div>
                            <div class="form-group">
                                <label for="apmaterno">Apellido Materno:</label>
                                <input type="text" class="form-control" id="apmat" name="apmaterno" placeholder="Ingresa tu apellido materno">
                            </div>
                            <div class="form-inline">
                                <label for="txtPE">Selecciona tu Programa Educativo:</label>
                                <select class="form-control" id="selectPE" name="PEs">
                                    <c:forEach items="${requestScope.listaPE}" var="pe">
                                        <option value=${pe.id}>${pe.dependencia}</option>
                                    </c:forEach>
                                </select>
                                <label for="txtTV">Motivo de Visita:</label>
                                <select class="form-control" id="selectTV" name="MVs">
                                    <c:forEach items="${requestScope.listavisits}" var="lv">
                                        <option value=${lv.id}>${lv.tipo}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dateRgs">Fecha:</label>
                                <input type="date" class="form-control" id="fechaRgs" name="fecha">
                            </div>
                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRV" value="Registrar visita">
                        </form><br>
                </div>
                <!--Función agregada, consulta por fecha a la tabla-->
                <div id="content2" class="col-sm-10">
                    <h4>Consultar visitas por fecha</h4>                                          
                    <form class="form-inline">
                        <label>Fecha:</label>
                        <input type="date" class="form-control">
                        <button class="btn btn-info">Consultar Visitas</button>
                        <br><br>
                    </form>
                    <h4>Consultar todas las visitas</h4>                                          
                    <button class="btn btn-info">Consultar Visitas</button>
                    <br><br> 
                </div>
                <!--Area de imagenes de visitas-->
                <div class="col-sm-2 text-right">
                    <div class="well">
                         <img src="Imagenes\visita1.jpg" class="img-responsive" alt="Image1">
                    </div>
                    <div class="well">
                        <img src="Imagenes\visita2.jpg" class="img-responsive" alt="Image2">
                    </div>
                    <!--Funciones agregadas para acceso autorizado-->
                    <div id="c-ap">
                        <label>Consultas</label><br>
                        <button type="button" class="btn btn-default" id='btn-consult' onclick='pConsultas();'>
                            <label id="giconsult" class="glyphicon glyphicon-search"></label>
                        </button><br>
                        <label>Formulario de registro</label><br>
                        <button type="button" class="btn btn-default" id='btn-form' onclick='pForm();'>
                            <label id="giconForm" class="glyphicon glyphicon-list-alt"></label>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <script src="Scripts/visitas.js"></script>
        <!--FOOTER todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>