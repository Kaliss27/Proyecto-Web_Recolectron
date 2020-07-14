function dPanelUser(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse1").innerHTML;
    
};

function dPanelCArt(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse2").innerHTML;
};

function dPanelCGral(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse3").innerHTML;
};

function dPanelRD(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse4").innerHTML;
};

function dPanelRV(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse5").innerHTML;
};

function dPanelImps(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse6").innerHTML;
};

function dPanelVinv(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse7").innerHTML;
};


function dPanelEdu(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse8").innerHTML;
};

////$("#auser").on('click', function () {
////        VistaRapida.modulo_usuarios();
////    });
////
//
////var VistaRapida = (function () {
////
////    return {
////        modulo_usuarios: function () {
////            $.get("Acceso_Users", {
////                ACCION: "Agregar_Usuarios"
////            }).then(function () {
////                $(document.body).html(arguments[0]);
////                $("#btnRdu").on('click', function () {
////                    var text = "";
////                    if ($.trim($("#nom").val()).length === 0) {
////                        text = text + "Nombre\n";
////                    }
////                    if ($.trim($("#appaterno").val()).length === 0) {
////                        text = text + "Apellido Paterno\n";
////                    }
////                    if ($.trim($("#apmaterno").val()).length === 0) {
////                        text = text + "Apellido Materno\n";
////                    }
////                    if ($.trim($("#usu").val()).length === 0) {
////                        text = text + "Usuario\n";
////                    }
////                    if ($.trim($("#pass").val()).length === 0) {
////                        text = text + "Contraseña\n";
////                    }
////                    if (text.length > 0) {
////                        alert('Debe llenar todos los campos');
////                        return false;
////                    } else {
////                        
////                        return false;
////                    }
////                });
////
////            });
////        },
////        guardadatos: function (objeto, accion) {
////            $.get("Acceso_Users", {
////                ACCION: accion,
////                DATOS: JSON.stringify(objeto)
////            });
////        }
////       
////
////
////    };
////}());
