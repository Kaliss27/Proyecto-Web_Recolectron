$(document).ready(function () {
    $("#vistaLogin").on('click', function () {
        User_Login.agregar();
    });

});

var User_Login = (function () {

    return {

        agregar: function () {
            $.get("User_Login", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
//                $("#login").on('click', function () {
//                    var Usuario = {
//                      "usuario": $("#usu").val(),
//                      "password":$("#pass").val()
//                    };
//                    User_Login.valida_usuario(Usuario,"Validar Usuario");
//                });
//                
//            });
//        },
//        valida_usuario: function (objeto, accion) {
//            $.get("User_Login", {
//                ACCION: accion,
//                DATOS: JSON.stringify(objeto)
//            });
//        }
    });
        }
    };
}());

