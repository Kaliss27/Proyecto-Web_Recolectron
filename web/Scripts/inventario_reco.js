$(document).ready(function () {
    $("#form_inventario").on('click', function () {
        Inventario.agregar();
    });
});

var Inventario = (function () {

    return {

        agregar: function () {
            $.get("Inventario", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                
            });
        }
    };
}());

