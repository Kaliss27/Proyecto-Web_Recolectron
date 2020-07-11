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
        <script src="Scripts/inventario_reco.js" type="text/javascript"></script>
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
                                <li><a href="#" id="form_inventario">Inventario</a></li>
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
                <div class="col-sm-8 form-inline" id="one">
                    <div id="contenido">
                        <label>CONTROL RECOLECTRON</label><br>
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
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="usuariosr">
                                        <form action="#">
                                            <label>Nombre(s):</label>
                                            <input type="text" class="form-control"><br>
                                            <label>Apellido Paterno:</label>
                                            <input type="text" class="form-control"><br>
                                            <label>Apellido Materno:</label>
                                            <input type="text" class="form-control"><br>
                                            <label for="typUser">Tipo de Usuario:</label>
                                            <select class="form-control" id="selecttU" name="TUser">
                                                <!--<c:forEach items="${requestScope.listaPE}" var="usert">
                                                <option value=${pe.id}>${pe.dependencia}</option>
                                                </c:forEach>!-->
                                            </select>
                                            <label>Usuario:</label
                                            <input type="text" class="form-control"><br>
                                            <label>Contraseña:</label>
                                            <input type="text" class="form-control"><br><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRdu" value="Registrar">
                                        </form> 
                                    </div>
                                </div>
                                <div id="puser" class="tab-pane fade">
                                    <div id="tabla-tuser">
                                        <table class='table table-hover table-condensed table-bordered'>
                                            <tr>
                                                <th>ID</th
                                                <th>Tipo de Usuario</th>
                                                <th>Editar</th>
                                                <th>Eliminar</th>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="usuariosr">
                                        <form action="#">
                                            <label>Tipo de permiso:</label>
                                            <input type="text" class="form-control"><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRU" value="Registrar">
                                        </form> 
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
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="categoriasr">
                                        <form action="#">
                                            <label>Categoría:</label>
                                            <input type="text" class="form-control"><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnCat" value="Registrar">
                                        </form> 
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
                                                    <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                                </td>
                                                <td>
                                                    <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="feqdanino">
                                        <form action="#">
                                            <label>Elemento quimico:</label>
                                            <input type="text" class="form-control"><br>
                                            <label>Daños:</label><br>
                                            <textarea class="form-control" id="txtD" name="desc" rows="4" cols="50"></textarea><br>
                                            <input class="btn btn-success" type="submit" class="btn btn-default" id="btnFEQ" value="Registrar">
                                        </form> 
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
                                            <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                        </td>
                                        <td>
                                            <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="categoriasr" class="form-inline">
                                <form action="#">
                                    <label>Estado:</label>
                                    <input type="text" class="form-control"><br>
                                    <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRst" value="Registrar">
                                </form> 
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
                                            <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                        </td>
                                        <td>
                                            <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="categoriasr" class="form-inline">
                                <form action="#">
                                    <label>Origen:</label>
                                    <input type="text" class="form-control"><br><br>
                                    <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRorg" value="Registrar">
                                </form> 
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
                                            <button class='btn btn-warning glyphicon glyphicon-pencil' data-toggle='modal' data-target='#modalEdicion'></button>
                                        </td>
                                        <td>
                                            <button class='btn btn-danger  glyphicon glyphicon-remove'></button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="categoriasr" class="form-inline">
                                <form action="#">
                                    <label>Tipo de visita:</label>
                                    <input type="text" class="form-control"><br>
                                    <input class="btn btn-success" type="submit" class="btn btn-default" id="btnRV" value="Registrar">
                                </form> 
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