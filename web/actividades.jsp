<%-- 
    Document   : actividades
    Created on : 4/06/2020, 10:27:00 PM
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
        <link href="CSS/actividadesS.css" rel="stylesheet" type="text/css"/>
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
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="RegistroVisita.jsp">Registra tu visita</a></li>
                        <li><a href="RegistroDR.jsp">Donaciones Recibidas</a></li>
                        <li><a href="RegistroDE.jsp">Donaciones Emitidas</a></li>
                        <li><a href="Eventos.jsp">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Equipo RECO
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Vista Rápida</a></li>
                                <li><a href="inventarioReco.jsp">Inventario</a></li>
                                <li class="active"><a href="#">Actividades</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <center><label>CONTROL ACTIVIDADES RECO</label></center>
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label class="panel-title">
                            <a data-toggle="collapse" href="#collapse1">ACTIVIDADES RECOLECTRON</a>
                        </label>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="table-responsive">          
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Descripción</th>
                                            <th>Fecha y Hora de Inicio</th>
                                            <th>Fecha y Hora de Final</th>
                                            <th>Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>-------</td>
                                            <td>-------</td>
                                            <td>-------</td>
                                            <td>-------</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <div class="panel-group">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label class="panel-title">
                                <a data-toggle="collapse" href="#collapse2">REGISTRO DE ACTIVIDADES</a>
                            </label>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <form method="POST">
                                    <div class="form-group">
                                        <label>Descripción Actividad:</label><br>
                                        <textarea class="form-control" id="txtD" name="desc" rows="4" cols="50"></textarea><br>
                                        <label>Seleccione material usado en la actividad:</label>
                                        <select class="form-control" id="selectRE" name="PEs">
                                           <option value="0">Selecciona--</option>
                                        </select>
                                        <div class="form-inline">
                                           <label for="dateIn">Fecha de Inicio:</label>
                                           <input type="date" class="form-control" id="fechaIn">
                                           <label for="datehIn">Hora de inicio:</label>
                                           <input type="time" class="form-control" id="hIn" name="appt">
                                       </div><br>
                                       <div class="form-inline">
                                            <label for="dateTer">Fecha de Termino:</label>
                                            <input type="date" class="form-control" id="fechaRgs">
                                            <label for="dateTer">Hora de Termino:</label>
                                            <input type="time" class="form-control" id="hTer" name="appt">
                                       </div>
                                     </div>
                                     <button class="btn btn-success" type="submit" class="btn btn-default">Registrar Actividad</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>   
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label class="panel-title">
                            <a data-toggle="collapse" href="#collapse3">MATERIAL EN ESPERA DE REVISIÓN</a>
                        </label>
                    </div>
                    <div id="collapse3" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="table-responsive">          
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Articulo</th>
                                            <th>Cantidad</th>
                                            <th>Peso x Unidad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>-------</td>
                                            <td>-------</td>
                                            <td>-------</td>
                                        </tr>
                                    </tbody>
                                </table>
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