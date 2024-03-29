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
        <link href="CSS/DrecibidasStyle.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/visitas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
        <script src="Scripts/eventos.js" type="text/javascript"></script>
        <script src="Scripts/vista_login.js" type="text/javascript"></script>
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
                        <li class="active"><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
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
        <!--Carussel Imagenes de donaciones-->
        <div class="container" id="contenido">
            <div class="row">
                <div class="col-sm-3">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="Imagenes\dr1.jpg" alt="reco1" style="width:100%;">
                            </div>
                            <div class="item">
                                <img src="Imagenes\dr2.jpg" alt="reco2" style="width:100%;">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div><br>
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
                <!--Formulario Donaciones Recibidas-->
                <div id="content1" class="col-sm-9">
                    <center><label id="headerRV">¡Registra tu donación al recolectrón!</label></center>
                    <form method="POST" id="my-form1">
                        <div class="form-group">
                            <label for="orgn">Origen:</label>
                            <select  class="form-control" id="selectOrgn" name="orgnD">
                                <c:forEach items="${requestScope.listaOrigen}" var="ori">
                                    <option value=${ori.id}>${ori.origen}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nameC">Nombre Completo:</label>
                            <input type="text" class="form-control" id="pwd" placeholder="Ingresa tu nombre completo">
                        </div>
                        <div class="form-inline">
                            <label for="numberD">Teléfono:</label>
                            <input type="tel" class="form-control" id="telefono" placeholder="Teléfono de contacto">
                            <label for="emailDR">Correo Electrónico:</label>
                            <input type="email" class="form-control" id="emailDRid" placeholder="Ingresa tu email">
                        </div><br>
                        <div class="form-group">
                            <label for="dateRgs">Fecha de recepción:</label>
                            <input type="date" class="form-control" id="fechaRgs">
                        </div>
                        <div class="form-group">
                        <input id="regdatos" class="btn btn-primary" type="submit" class="btn btn-default" value="Registrar Datos">
                        </div>
                    </form>
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <label class="panel-title">
                                        <a data-toggle="collapse" href="#collapse1">Agregar Articulos<span class="glyphicon glyphicon-plus"></span></a>
                                    </label>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <form method="POST" id="my-form2" name="formul">
                                            <div class="form-group" >
                                                <label id="Cat">Categoria:</label>
                                                <select class="form-control" id="selectCat" name="Catres">
                                                    <c:forEach items="${requestScope.listaCategorias}" var="cat">
                                                        <option value=${cat.id}>${cat.categoria}</option>
                                                    </c:forEach>  
                                                </select>
                                                <select class="form-control" id="formaux" name="fomtemp">
                                                    <c:forEach items="${requestScope.listaRE}" var="re">
                                                            <option value=${re.id}>${re.descripcion}</option>
                                                    </c:forEach>
                                                </select>
                                                <select class="form-control" id="formaux2" name="fomtemp2">
                                                    <c:forEach items="${requestScope.listaRE}" var="re">
                                                            <option value=${re.categoria}></option>
                                                    </c:forEach>
                                                </select>
                                            </div>             
                                            <div class="form-group">
                                                <label id="REc">Residuo Electrónico:</label>
                                                <select class="form-control" id="selectRE" name="PEs">
                                                </select>
                                            </div>
                                            <div class="form-inline">
                                                <label id="cnt">Cantidad:</label>
                                                <input type="number" class="form-control" id="cntN">
                                                <label id="pxu">Peso por Unidad:</label>
                                                <input type="text" class="form-control" id="PxUi">
                                                <input id="btnAdd" class="btn btn-primary" type="submit" class="btn btn-default" value="Agregar">
                                                <input id="btnDel" class="btn btn-primary" type="submit" class="btn btn-default" value="Borrar">
                                            </div>
                                        </form>
                                        <div class="table-responsive">          
                                            <table class="table" id="tbarticulos">
                                                <thead>
                                                    <tr>
                                                        <th>Articulo</th>
                                                        <th>Cantidad</th>
                                                        <th>Peso(kg)</th>
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
                        <input id="btnDR" class="btn btn-success" type="submit" class="btn btn-default" value="Registrar Recepción">
                   <br><br>
                </div>
                <!--Función agregada, consulta por fecha a la tabla-->
                <div id="content2" class="col-sm-9">
                    <center><label id="headerRV">Consultar las donaciones recibidas</label></center>                                          
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
                    <h4>Consultar Donaciones recibidas</h4>                                          
                    <form class="form-inline">
                        <label>ID Donación registrada:</label>
                        <input type="date" class="form-control">
                        <label>Fecha:</label>
                        <input type="date" class="form-control">
                        <label>Generar Acuse</label>
                        <button class="btn btn-info">Buscar</button>
                        <br><br>
                    </form>
                    <h4>Consultar todas las visitas</h4>                                          
                    <button class="btn btn-info">Consultar Visitas</button>
                    <br><br> 
                </div>
            </div>
        </div>
        <br><br>
        <script src="Scripts/Drecibidas.js"></script>
        <!--Foter todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>