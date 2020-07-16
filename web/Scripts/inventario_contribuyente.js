$(document).ready(function () {
    $("#visInventario1").on('click', function () {
        Inventario_Contribuyente.agregar();
    });
});

var Inventario_Contribuyente = (function () {

    return {

        agregar: function () {
            $.get("Inventario_Contribuyente", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);

            });
        },
        guardadatos: function (objeto, accion) {
            $.get("Inventario_Contribuyente", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        }


    };
}());
