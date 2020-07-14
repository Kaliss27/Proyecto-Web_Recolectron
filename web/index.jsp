<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RECOLECTRÓN</title>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/estiloReco.css" rel="stylesheet" type="text/css"/>
        <script src="Scripts/jquery-3.5.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
        <script src="Scripts/visitas.js" type="text/javascript"></script>
        <script src="Scripts/Drecibidas.js" type="text/javascript"></script>
        <script src="Scripts/Demitidas.js" type="text/javascript"></script>
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
                    <a class="navbar-brand" href="#"><img class="img-circle" alt="Brand" src="Imagenes\logo_recoUV.jpg" width="30" height="30"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp" id="ini">Inicio</a></li>
                        <li><a href="#" id="form_visita">Registra tu visita</a></li>
                        <li><a href="#" id="form_donrec">Donaciones Recibidas</a></li>
                        <li><a href="#" id="form_donem">Donaciones Emitidas</a></li>
                        <li><a href="#" id="form_event">Eventos Reco</a></li>
                    </ul>
                    <ul id="nb-sp" class="nav navbar-nav navbar-right">
                        <li><a href="EQReco.jsp"><span class="glyphicon glyphicon-log-in"></span>Equipo RECO</a></li>
                    </ul>
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
        <!--Carousel Index-->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Imagenes\banner_recoUV.jpg" alt="Banner" style="width:100%;">
                </div>
            </div>
        </div>
        <div class="container" id="infoReco">
            <div class="row content">
                <div class="col-lg-10 text left">
                    <h1>RECOLECTRÓN</h1>
                </div>
            </div>
        </div>   
        <!--FOOTER todas las paginas-->
        <footer class="container-fluid text-center">
            <p>Recolectrón. Universidad Veracruzana</p>
        </footer>
    </body>
</html>