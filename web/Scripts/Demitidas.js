$(document).ready(function () {
    $("#form_donem").on('click', function () {
        DonEm.agregar();
    });

});

var DonEm = (function () {

    return {

        agregar: function () {
            $.get("DonEm", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                
                });


        }

    };
}());