<%-- 
    Document   : inventarioReco
    Created on : 26/05/2020, 06:19:53 PM
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
        <link href="CSS/inventarioStyle.css" rel="stylesheet" type="text/css"/>
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
                                <li><a href="vistaRapida.jsp">Vista Rápida</a></li>
                                <li class="active"><a href="#">Inventario</a></li>
                                <li><a href="actividades.jsp">Actividades</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Tabla Inventario-->
        <div class="container">
            <center><label id="headInv">Inventario Recolectron</label></center><br>
            <div class="table-responsive">          
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Articulo</th>
                            <th>Cantidad</th>
                            <th>Estado</th>
                            <th>Notas</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>-------</td>
                            <td>-------</td>
                            <td>-------</td>
                            <td>-------</td>
                            <td>-------</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label class="panel-title">
                            <a data-toggle="collapse" href="#collapse1">Registrar Nuevo Articulo</a>
                        </label>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form>
                                <div class="form-group" >
                                    <label id="Cat">Categoria:</label>
                                    <select class="form-control" id="selectCat" name="Catres">
                                        <option>----</option>  
                                    </select>
                                </div>             
                                <div class="form-group">
                                    <label id="REc">Residuo Electrónico:</label>
                                    <select class="form-control" id="selectRE" name="PEs">
                                        <option>--------------</option>
                                    </select>
                                </div>
                                <div class="form-inline">
                                    <label id="cnt">Cantidad:</label>
                                    <input type="number" class="form-control" id="cntN">
                                    <label id="pxu">Peso por Unidad:</label>
                                    <input type="text" class="form-control" id="PxUi">
                                    <label></label>
                                    <label id="state">Estado:</label>
                                    <select class="form-control" id="selectRE" name="Sts">
                                        <option>--------------</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Notas</label><br>
                                    <textarea class="form-control" id="txtNote" name="desc" rows="4" cols="20"></textarea><br>
                                </div>
                                <button id="btnE" class="btn btn-success" type="submit" class="btn btn-default">Registrar Articulo</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label class="panel-title">
                            <a data-toggle="collapse" href="#collapse2">Nuevo Residuo Electrónico</a>
                        </label>
                    </div>
                    <div id="collapse2" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form>             
                                <div class="form-group">
                                    <label id="REc">Nombre Residuo Electrónico:</label>
                                    <input type="text" class="form-control" id="nameRE">
                                </div>
                                <div class="form-inline">
                                    <label id="Cat">Categoria:</label>
                                    <select class="form-control" id="selectCat" name="Catres">
                                        <option>----</option>  
                                    </select>
                                    <label id="cnt">Costo:</label>
                                    <input type="text" class="form-control" id="costPxU" placeholder="Costo promedio x unidad">
                                </div><br>
                                <button id="btnE" class="btn btn-success" type="submit" class="btn btn-default">Registrar Articulo</button>
                            </form><br>
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
