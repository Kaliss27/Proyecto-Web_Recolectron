$(document).ready(function () {
    $("#visActividades").on('click', function () {
        Actividades_Admin.agregar();
    });

});
var Actividades_Admin = (function () {

    return {

        agregar: function () {
            $.get("Actividades_Admin", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                
 
                    
                });
                
        },
        guardadatos: function (objeto, accion) {
            $.get("Actividades_Admin", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        },
        
        eliminar: function (id) {
            $.get("Actividades_Admin", {
                ACCION: "Eliminar",
                id_eliminar: id
            });
        }


    };
}());