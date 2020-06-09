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
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="RegistroVisita.jsp">Registra tu visita</a></li>
                        <li class="active"><a href="RegistroDR.jsp">Donaciones Recibidas</a></li>
                        <li><a href="RegistroDE.jsp">Donaciones Emitidas</a></li>
                        <li><a href="Eventos.jsp">Eventos Reco</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="EQReco.jsp"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Carussel Imagenes de donaciones-->
        <div class="container">
            <div class="row content">
                <div class="col-lg-2 text-right">
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
                    </div>
                </div>
                <!--Formulario Donaciones Recibidas-->
                <div class="col-lg-10">
                    <label id="headerRV">¡Registra tu donación al recolectrón!</label>
                    <form>
                        <div class="form-group">
                            <label for="orgn">Origen:</label>
                            <select class="form-control" id="selectOrgn" name="orgnD">
                                <option value="--">Selecciona--</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nameC">Nombre:</label>
                            <input type="text" class="form-control" id="pwd" placeholder="Ingresa tu nombre">
                        </div>
                        <div class="form-inline">
                            <label for="numberD">Teléfono:</label>
                            <input type="tel" class="form-control" id="telefono" placeholder="Teléfono de contacto">
                            <label for="emailDR">Correo Electrónico:</label>
                            <input type="email" class="form-control" id="emailDRid" placeholder="Ingresa tu email">
                        </div>
                        <div class="form-group">
                            <label for="dateRgs">Fecha de recepción:</label>
                            <input type="date" class="form-control" id="fechaRgs">
                        </div>
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <label class="panel-title">
                                        <a data-toggle="collapse" href="#collapse1">Agregar Articulos<span class="glyphicon glyphicon-plus"></span></a>
                                    </label>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label id="Cat">Categoria:</label>
                                            <select class="form-control" id="selectCat" name="Catres">
                                                <option value="0">Selecciona--</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label id="REc">Residuo Electrónico:</label>
                                            <select class="form-control" id="selectRE" name="PEs">
                                                <option value="0">Selecciona--</option>
                                            </select>
                                        </div>
                                        <div class="form-inline">
                                            <label id="cnt">Cantidad:</label>
                                            <input type="number" class="form-control" id="cntN">
                                            <label id="pxu">Peso por Unidad:</label>
                                            <input type="text" class="form-control" id="PxUi">
                                            <button class="btn btn-primary" type="submit" class="btn btn-default">Agregar</button><br>
                                        </div>
                                        <div class="table-responsive">          
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Articulo</th>
                                                        <th>Cantidad</th>
                                                        <th>Peso(kg)</th>
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
                        <button class="btn btn-success" type="submit" class="btn btn-default">Registrar Recepción</button>
                    </form>  
                </div>
            </div>
        </div>
        <br><br>
        <!--Foter todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>