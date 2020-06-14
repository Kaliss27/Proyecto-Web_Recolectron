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
                        <li><a href="#" id="ini">Inicio</a></li>
                        <li><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li class="active"><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="EQReco.jsp"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Código para el formulario de donaciones emitidas-->
        <div class="container">
            <div class="row content">
                <div class="col-lg-10">
                    <label id="headerRV">¡Donación Emitida por el Recolectrón!</label>
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
                                    <label for="nameC">Nombre:</label>
                                    <input type="text" class="form-control" id="pwd" placeholder="Ingresa tu nombre">
                                </div>
                                <div class="form-inline">
                                    <label for="txtPE">Selecciona tu Programa Educativo:</label>
                                    <select class="form-control" id="selectPE" name="PEs">
                                        <option value="--">Selecciona--</option>
                                    </select>
                                    <label for="dateRgs">Fecha:</label>
                                    <input type="date" class="form-control" id="fechaRgs">
                                </div><br>
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <label class="panel-title">
                                                <a data-toggle="collapse" href="#collapse1">Agregar Articulos<span class="glyphicon glyphicon-plus"></span></a>
                                            </label>
                                        </div>
                                        <div id="collapse1" class="panel-collapse collapse">
                                            <div class="panel-body form-inline">
                                                <form>
                                                    <label id="art">Articulo:</label>
                                                    <select class="form-control" id="selectArt" name="PEs">
                                                        <option value="0">Selecciona--</option>
                                                    </select>
                                                    <label id="cnt">Cantidad:</label>
                                                    <input type="number" class="form-control" id="cntN"><br>
                                                    <button class="btn btn-primary" type="submit" class="btn btn-default">Agregar</button>
                                                </form><br>
                                                <div class="table-responsive">          
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Articulo</th>
                                                                <th>Cantidad</th>                                     
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>-------</td>
                                                                <td>-------</td                                                               
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-success" type="submit" class="btn btn-default">Registrar</button>
                            </form> 
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
                                <br>
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
                                                    <select class="form-control" id="selectArt" name="PEs">
                                                        <option value="0">Selecciona--</option>
                                                    </select>
                                                    <label id="cnt">Cantidad:</label>
                                                    <input type="number" class="form-control" id="cntN"><br>
                                                    <button class="btn btn-primary" type="submit" class="btn btn-default">Agregar</button>
                                                </form>
                                            </div><br>
                                            <div class="table-responsive">          
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Articulo</th>
                                                            <th>Cantidad</th>                                     
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>-------</td>
                                                            <td>-------</td                                                               
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-success" type="submit" class="btn btn-default">Registrar</button>
                            </form> 
                        </div>
                    </div> 
                </div>
                <!--Imagenes alusivas de donaciones emitidas-->
                <div class="col-lg-2 text-right">
                    <div class="well">
                         <img src="Imagenes\de1.jpg" class="img-responsive" alt="Image1">
                    </div>
                    <div class="well">
                        <img src="Imagenes\de2.jpg" class="img-responsive" alt="Image2">
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