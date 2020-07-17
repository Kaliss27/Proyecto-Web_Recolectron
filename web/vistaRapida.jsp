<%-- Vista Rapida para Usuario Administrador
    Document   : vistaRapida
    Created on : 4/06/2020, 09:57:32 PM
    Author     : karen
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECOLECTRÓN</title>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estiloReco.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/vistaRapidaS.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/Drecibidas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
        <script src="Scripts/eventos.js" type="text/javascript"></script>
        <script src="Scripts/visitas.js" type="text/javascript"></script>
        <script src="Scripts/inventario_admin.js" type="text/javascript"></script>
        <script src="Scripts/actividades_admin.js" type="text/javascript"></script>
        <link rel="icon" type="image/png" href="Imagenes/logo_recoUV.jpg" sizes="16x16">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <script src="Scripts/vistaRapida.js" type="text/javascript"></script>
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
                        <li><a href="index.jsp">Inicio</a></li>
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
                                <li><a href="#" id="visInventario">Inventario</a></li>
                                <li><a href="#" id="visActividades">Actividades</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <!--Contenedores de secciones para Vista Rapida-->
                <div class="col-sm-3 sidenav">
                    <div id="dUser">
                        <label>Bienvenido -${nom}-</label><br>
                        <label id="gicon" class="glyphicon glyphicon-user"></label><br>
                        <label>Usuario:</label>
                        <label id="tuser">Administrador</label><br>
                        <label>Fecha:</label>
                        <%
                            Date dNow = new Date( );
                            SimpleDateFormat ft =new SimpleDateFormat ("E dd.MM.yyyy");
                            out.print( "<label align=\"center\">" + ft.format(dNow) + "</label>");
                        %>
                        <a href="Logout?ACCION=Logout"><button type="submit" class="btn btn-default btn-block" id="logout">Salir</button></a>
                    </div>
                    <br>
                    <div id="imps">
                        <label>Impacto Sustentable</label><br>
                        <button type="button" class="btn btn-default" id='btn-imps' onclick='dPanelImps();'>
                            <label id="giconS" class="glyphicon glyphicon-globe"></label>
                        </button>
                    </div>
                    <br>
                    <div id="valInv">
                        <label>Valor del inventario</label><br>
                        <button type="button" class="btn btn-default" id='btn-vinv' onclick='dPanelVinv();'>
                            <label id="giconVinv" class="glyphicon glyphicon-usd"></label>
                        </button>
                    </div><br>
                    <div id="educ">
                        <label>Academico</label><br>
                        <button type="button" class="btn btn-default" id='btn-edu' onclick='dPanelEdu();'>
                            <label id="giconEdc" class="glyphicon glyphicon-education"></label>
                        </button>
                    </div>
                    <br>
                    <div id="menu">
                        <div class="form-inline">
                            <label>Manejo del reco</label><br>
                            <label id="giconCG" class="glyphicon glyphicon-edit"></label>
                        </div>
                        <div class='btn-group'>
                            <button type="button" class="btn btn-default btn-block" onclick='dPanelUser();'id="auser">Acceso Usuarios</button>
                            <button type="button" class="btn btn-default btn-block" onclick='dPanelCArt();' id="carticulos">Categorias de Articulos</button>
                            <button type="button" class="btn btn-default btn-block" onclick='dPanelCGral();' id ="cgeneral" >Control General</button>
                            <button type="button" class="btn btn-default btn-block" onclick='dPanelRD();' id ="rdonaciones">Recepción de donaciones</button>
                            <button type="button" class="btn btn-default btn-block" onclick='dPanelRV();' id ="rvistas">Registro de visitas</button>
                        </div>
                    </div>
                    <br><br><br>
                </div>
                <!--Area de visualización de opciones -->    
                <div class="col-sm-8 form-inline" id="one">
                    <div id="contenido">
                        <h2>CONTROL RECOLECTRON</h2>
                        <div id="cpanel">
                        </div>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel panel-success">
                            <div class="panel-heading">Acceso Usuario</div>
                                <div class="panel-body">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#users">Usuarios</a></li>
                                        <li><a data-toggle="tab" href="#puser">Permisos de usuarios</a></li>
                                    </ul>
                                <div class="tab-content">
                                    <div id="users" class="tab-pane fade in active">
                                        <div id="tabla-users">
                                            <table class='table table-hover table-condensed table-bordered'>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Nombre Completo</th>
                                                    <th>Tipo de usuario</th>
                                                    <th>Usuario</th>
                                                    <th>Editar</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEUsuario'></button>
                                                    </td>
                                                    <td>
                                                        <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="usuariosr">
                                            <form action="#">
                                                <label>Nombre(s):</label><input type="text" class="form-control"><br>
                                                <label>Apellido Paterno:</label><input type="text" class="form-control"><br>
                                                <label>Apellido Materno:</label><input type="text" class="form-control"><br>
                                                <label for="typUser">Tipo de Usuario:</label>
                                                <select class="form-control" id="selecttU" name="TUser">
                                                    <!--<c:forEach items="${requestScope.listaPE}" var="usert">
                                                        <option value=${pe.id}>${pe.dependencia}</option>
                                                    </c:forEach>!-->
                                                </select>
                                                <label>Usuario:</label><input type="text" class="form-control"><br>
                                                <label>Contraseña:</label><input type="text" class="form-control"><br><br>
                                                <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRdu" value="Registrar">
                                            </form> 
                                        </div>
                                        <!-- Modal para edición de usuarios -->
                                        <div class="modal fade" id="modalEUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Editar datos del usuario</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label>Nombre(s):</label><input type="text" class="form-control"><br>
                                                        <label>Apellido Paterno:</label><input type="text" class="form-control"><br>
                                                        <label>Apellido Materno:</label><input type="text" class="form-control"><br>
                                                        <label for="typUser">Tipo de Usuario:</label>
                                                        <select class="form-control" id="selecttU" name="TUser">
                                                        <!--<c:forEach items="${requestScope.listaPE}" var="usert">
                                                            <option value=${pe.id}>${pe.dependencia}</option>
                                                        </c:forEach>!-->
                                                        </select>
                                                        <label>Usuario:</label><input type="text" class="form-control"><br>
                                                        <label>Contraseña:</label><input type="text" class="form-control"><br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>            
                                    </div>
                                    <div id="puser" class="tab-pane fade">
                                        <div id="tabla-tuser">
                                            <table class='table table-hover table-condensed table-bordered'>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Tipo de Usuario</th>
                                                    <th>Editar</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalETipoPermiso'></button>
                                                    </td>
                                                    <td>
                                                        <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="usuariosr">
                                            <form action="#">
                                                <label>Tipo de permiso:</label><input type="text" class="form-control"><br><br>
                                                <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRU" value="Registrar">
                                            </form> 
                                        </div>
                                        <!-- Modal para edición de usuarios -->
                                        <div class="modal fade" id="modalETipoPermiso" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Editar Tipo de Usuario</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label>Tipo de permiso:</label><input type="text" class="form-control"><br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                                
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel panel-success">
                            <div class="panel-heading">Categorias de Articulos</div>
                            <div class="panel-body">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#catRe">Categorias de Residuos Electronicos</a></li>
                                    <li><a data-toggle="tab" href="#EQdanino">Elementos Quimicos Dañinos</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="catRe" class="tab-pane fade in active">
                                        <div id="tabla-catre">
                                            <table class='table table-hover table-condensed table-bordered'>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Categoría</th>
                                                    <th>Editar</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalECategoria'></button>
                                                    </td>
                                                    <td>
                                                        <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="categoriasr">
                                            <form action="#">
                                                <label>Categoría:</label><input type="text" class="form-control"><br><br>
                                                <input class="btn btn-success" type="submit" class="btn btn-default" id="btnCat" value="Registrar">
                                            </form> 
                                        </div>
                                        <!-- Modal para edición de categorias -->
                                        <div class="modal fade" id="modalECategoria" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Editar datos de una categoria</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label>Categoría:</label><input type="text" class="form-control"><br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <div id="EQdanino" class="tab-pane fade">
                                        <div id="tabla-eq">
                                            <table class='table table-hover table-condensed table-bordered'>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Elemento Quimico</th>
                                                    <th>Daños</th>
                                                    <th>Editar</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEeq'></button>
                                                    </td>
                                                    <td>
                                                        <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div id="feqdanino">
                                            <form action="#">
                                                <label>Elemento quimico:</label><input type="text" class="form-control"><br>
                                                <label>Daños:</label><br>
                                                <textarea class="form-control" id="txtD" name="desc" rows="4" cols="50"></textarea><br><br>
                                                <input class="btn btn-success" type="submit" class="btn btn-default" id="btnFEQ" value="Registrar">
                                            </form> 
                                        </div>
                                        <!-- Modal para edición de EQ -->
                                        <div class="modal fade" id="modalEeq" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Editar datos del elemento quimico</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label>Elemento quimico:</label><input type="text" class="form-control"><br>
                                                        <label>Daños:</label><br>
                                                        <textarea class="form-control" id="txtD" name="desc" rows="4" cols="50"></textarea><br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="collapse3" class="panel-collapse collapse">
                        <div class="panel panel-success">
                            <div class="panel-heading">Control General</div>
                                <div class="panel-body">
                                    <div id="tabla-cgral">
                                        <table class='table table-hover table-condensed table-bordered'>
                                            <tr>
                                                <th>ID</th>
                                                <th>Estado</th>
                                                <th>Editar</th>
                                                <th>Eliminar</th>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEstado'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="categoriasr" class="form-inline">
                                        <form action="#">
                                            <label>Estado:</label><input type="text" class="form-control"><br><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRst" value="Registrar">
                                        </form> 
                                    </div>
                                </div>
                                <!-- Modal para edición de Estados -->
                                <div class="modal fade" id="modalEstado" tabindex="-1" role="dialog" aria-labelledby="myModalLabe5">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Editar datos del estado</h4>
                                            </div>
                                            <div class="modal-body">
                                                <label>Estado:</label><input type="text" class="form-control"><br>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel panel-success">
                                <div class="panel-heading">Recepción de donaciones</div>
                                    <div class="panel-body">
                                        <div id="tabla-rd">
                                            <table class='table table-hover table-condensed table-bordered'>
                                            <tr>
                                                <th>ID</th>
                                                <th>Origen:</th>
                                                <th>Editar</th>
                                                <th>Eliminar</th>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEOrigen'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="categoriasr" class="form-inline">
                                        <form action="#">
                                            <label>Origen:</label><input type="text" class="form-control"><br><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRorg" value="Registrar">
                                        </form> 
                                    </div>
                                </div>
                                <!-- Modal para edición de Origen -->
                                <div class="modal fade" id="modalEOrigen" tabindex="-1" role="dialog" aria-labelledby="myModalLabe6">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Editar datos de origen</h4>
                                            </div>
                                            <div class="modal-body">
                                                <label>Origen:</label><input type="text" class="form-control"><br>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>    
                        <div id="collapse5" class="panel-collapse collapse">
                            <div class="panel panel-success">
                                <div class="panel-heading">Registro de visitas</div>
                                    <div class="panel-body">
                                        <div id="tabla-visit">
                                            <table class='table table-hover table-condensed table-bordered'>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Tipo de Visita</th>
                                                    <th>Editar</th>
                                                    <th>Eliminar</th>
                                                </tr>
                                                <tr>
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
                                        <div id="categoriasr" class="form-inline">
                                            <form action="#">
                                                <label>Tipo de visita:</label><input type="text" class="form-control"><br><br>
                                                <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRV" value="Registrar">
                                            </form> 
                                        </div>
                                    </div>
                                    <!-- Modal para edición de Tipo de Visita -->
                                    <div class="modal fade" id="modalEVisita" tabindex="-1" role="dialog" aria-labelledby="myModalLabe7">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">Editar datos del tipo de visita</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <label>Tipo de visita:</label><input type="text" class="form-control"><br>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                    <button type="button" class="btn btn-primary btn-warning">Editar</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>            
                            </div>
                            <div id="collapse6" class="panel-collapse collapse">
                                <div class="panel panel-success">
                                    <div class="panel-heading">Impacto sustentable</div>
                                        <div class="panel-body">    
                                        </div>
                                </div>            
                            </div>
                            <div id="collapse7" class="panel-collapse collapse">
                                <div class="panel panel-success">
                                    <div class="panel-heading">Valor del Inventario</div>
                                    <div class="panel-body">
                                        <div>
                                            <label>Se cuenta con un valor estimado de :$ </label>
                                        </div>
                                    </div>
                                </div>            
                            </div>
                            <div id="collapse8" class="panel-collapse collapse">
                                <div class="panel panel-success">
                                    <div class="panel-heading">Aspectos Academicos</div>
                                    <div class="panel-body">
                                        <div id="asisAQC" class="form-group">
                                            <h4>Asistencia Alumnos de Arquitectura Computacional</h4>
                                            <label>Periodo a consultar</label>
                                            <form class="form-inline">
                                                <label>Del</label>
                                                <input type="date" class="form-control">
                                                <label>al</label>
                                                <input type="date" class="form-control">
                                                <button class="btn btn-info">Consultar Asistencia</button>
                                            </form>
                                        </div><br><br>
                                        <div id="asiSS" class="form-group">
                                            <h4>Asistencia Alumnos de Servicio Social</h4>
                                            <label>Periodo a consultar</label>
                                            <form class="form-inline">
                                                <label>Del</label>
                                                <input type="date" class="form-control">
                                                <label>al</label>
                                                <input type="date" class="form-control">
                                                <button class="btn btn-info">Consultar Asistencia</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>            
                            </div>
                        </div>
                    </div>
                </div>
        <!--Footer todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>