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
        <link href="CSS/DemitidasStyle.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/visitas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
        <script src="Scripts/Drecibidas.js"></script>
        <script src="Scripts/vista_login.js" type="text/javascript"></script>
        <script src="Scripts/eventos.js" type="text/javascript"></script>
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
                        <li><a href="index.jsp" id="ini">Inicio</a></li>
                        <li><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li class="active"><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#" id="vistaLogin"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Código para el formulario de donaciones emitidas-->
        <div class="container">
            <div class="row">
                <div id="content1" class="col-sm-10">
                    <center><label id="headerRDE">¡Donación Emitida por el Recolectrón!</label></center>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#DE_estudiantes">Estudiantes</a></li>
                        <li><a data-toggle="tab" href="#DE_gral">Publico General</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="DE_estudiantes" class="tab-pane fade in active">
                            <form id="my-students-form" action="" method="POST">
                                <div class="form-group">
                                    <label for="matricula">Mátricula UV:</label>
                                    <input type="text" class="form-control" id="matricula" placeholder="Ingresa tu mátricula">
                                </div>
                                <div class="form-group">
                                    <label for="nameC">Nombre(s):</label>
                                    <input type="text" class="form-control" id="nom" name="nombre" placeholder="Ingresa tu nombre">
                                    <label for="lastname1C">Apellido Paterno:</label>
                                    <input type="text" class="form-control" id="apat" name="apaterno" placeholder="Ingresa tu apellido paterno">
                                    <label for="lastname2C">Apellido Materno:</label>
                                    <input type="text" class="form-control" id="amat" name="amaterno" placeholder="Ingresa tu apellido materno">
                                </div>
                                <div class="form-inline">
                                    <label for="txtPE">Selecciona tu Programa Educativo:</label>
                                    <select class="form-control" id="selectPE" name="PEs">
                                    <c:forEach items="${requestScope.listaPE}" var="pe">
                                        <option value=${pe.id}>${pe.dependencia}</option>
                                    </c:forEach>
                                </select>
                                    <label for="dateRgs">Fecha:</label>
                                    <input type="date" class="form-control" id="fechaRgs">
                                    <input id="regdatosest" class="btn btn-primary" type="submit" class="btn btn-default" value="Registrar datos">
                                </div>
                            </form><br>
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <label class="panel-title">
                                                <a data-toggle="collapse" href="#collapse1">Agregar Articulos<span class="glyphicon glyphicon-plus"></span></a>
                                            </label>
                                        </div>
                                        <div id="collapse1" class="panel-collapse collapse">
                                            <div class="panel-body form-inline">
                                                <form method="POST">
                                                    <label id="art">Articulo:</label>
                                                    <select class="form-control" id="selectArt" name="Articulos">
                                                        <c:forEach items="${requestScope.listaArticulo}" var="art">
                                                            <option value=${art.id}>${art.articulo}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <label id="cnt">Cantidad:</label>
                                                    <input type="number" class="form-control" id="cntN1">
                                                    <input id="addArticulo1" class="btn btn-primary" type="submit" class="btn btn-default" value="Agregar">
                                                    <input id="btnDelArticulo1" class="btn btn-primary" type="submit" class="btn btn-default" value="Borrar">
                                                </form><br>
                                                <div class="table-responsive">          
                                                    <table class="table" id="tbarticulos1">
                                                        <thead>
                                                            <tr>
                                                                <th>Articulo</th>
                                                                <th>Cantidad</th>                                     
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <input id="btnDEE" class="btn btn-success" type="submit" class="btn btn-default" value="Terminar registro">
                            <br> 
                        </div>
                        <div id="DE_gral" class="tab-pane fade">
                            <form id="my-pgral-form" action="" method="POST">
                                <div class="form-group">
                                    <label for="dest">Destinatario:</label>
                                    <input type="text" class="form-control" id="destinatario">
                                </div>
                                <div class="form-inline">
                                    <label for="phoneF">Teléfono de contacto:</label>
                                    <input type="tel" class="form-control" id="phone" placeholder="Telefono">
                                    <label for="emailF">Correo electronico:</label>
                                    <input type="email" class="form-control" id="emailC" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label for="causaF">Causa:</label>
                                    <input type="text" class="form-control" id="textCausa">
                                </div>
                                <div class="form-group">
                                    <label for="dateF">Fecha:</label>
                                    <input type="date" class="form-control" id="dateT">
                                </div>
                                <input id="regdatos" class="btn btn-primary" type="submit" class="btn btn-default" value="Registrar Datos">
                                </form><br>
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <label class="panel-title">
                                                <a data-toggle="collapse" href="#collapse2">Agregar Articulos<span class="glyphicon glyphicon-plus"></span></a>
                                            </label>
                                        </div>
                                        <div id="collapse2" class="panel-collapse collapse">
                                            <div class="panel-body form-inline">
                                                <form>
                                                    <label id="art">Articulo:</label>
                                                    <select class="form-control" id="selectArt2" name="Articulo">
                                                         <c:forEach items="${requestScope.listaArticulo}" var="art">
                                                            <option value=${art.id}>${art.articulo}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <label id="cnt">Cantidad:</label>
                                                    <input type="number" class="form-control" id="cntN2">
                                                    <input id="addArticulo2" class="btn btn-primary" type="submit" class="btn btn-default" value="Agregar">
                                                    <input id="btnDelArticulo2" class="btn btn-primary" type="submit" class="btn btn-default" value="Borrar">
                                                </form>
                                            </div><br>
                                            <div class="table-responsive">          
                                                <table id="tbarticulos2" class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Articulo</th>
                                                            <th>Cantidad</th>                                     
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input id="btnDEP" class="btn btn-success" type="submit" class="btn btn-default" value="Terminar registro">
                        </div>
                    </div>
                    <br><br><br>
                </div>
                <div id="content2" class="col-sm-10">
                    <center><label id="headerRDE">Consultas de donaciones Emitidas</label></center><br>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#DE_estudiantes1">Estudiantes</a></li>
                        <li><a data-toggle="tab" href="#DE_gral2">Publico General</a></li>
                    </ul>
                    <br>
                    <div class="tab-content">
                        <div id="DE_estudiantes1" class="tab-pane fade in active">
                            <form class="form-inline">
                                <label>Fecha:</label>
                                <input type="date" class="form-control">
                                <button class="btn btn-info">Buscar</button>
                                <br><br>
                            </form>
                            <div id="tabla-DR">
                                <table class='table table-hover table-condensed table-bordered'>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Fecha</th>
                                        <th>Editar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEVisita'></button>
                                        </td>
                                        <td>
                                            <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <h4>Consultar Donaciones emitidas</h4>                                         
                            <form class="form-inline">
                                <label>ID Donación registrada:</label>
                                <input type="date" class="form-control">
                                <label>Fecha:</label>
                                <input type="date" class="form-control"><br>
                                <button class="btn btn-info">Generar Acuse</button>
                                <br><br>
                            </form>
                            <h4>Consultar todas las donaciones emitidas</h4>                                          
                            <button class="btn btn-info">Consultar Donaciones</button>
                            <br><br>
                        </div>
                        <div id="DE_gral2" class="tab-pane fade">
                            
                        </div>
                    </div>
                </div>
                <!--Imagenes alusivas de donaciones emitidas-->
                <div class="col-sm-2 text-right">
                    <div class="well">
                         <img src="Imagenes\de1.jpg" class="img-responsive" alt="Image1">
                    </div>
                    <div class="well">
                        <img src="Imagenes\de2.jpg" class="img-responsive" alt="Image2">
                    </div>
                    <br>
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
        <!--FOOTER todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>