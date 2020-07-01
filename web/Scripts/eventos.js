$(document).ready(function () {
    $("#form_event").on('click', function () {
        EventosReco.agregar();
    });
});

var EventosReco = (function () {

    return {

        agregar: function () {
            $.get("EventosReco", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                $("#btnE").on('click',function(){
                    var text = "";
                    if ($.trim($("#tEvento").val()).length === 0) {
                        text = text + "Titulo del Evento\n";
                    }
                    if ($.trim($("#txtD").val()).length === 0) {
                        text = text + "Descripcion\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha\n";
                    }
                    if ($.trim($("#appt").val()).length === 0) {
                        text = text + "Hora\n";
                    }
                    
                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {
                        
                        var Evento = {
                        "titulo": $("#tEvento").val(),
                        "descripcion": $("#txtD").val(),
                        "fecha": $("#fechaRgs").val(),
                        "hora": $("#appt").val()
                    };
                       EventosReco.guardadatos(Evento, 'Guardar');
                        $(".alert").show();
                        EventosReco.agregar();
                        alert("Evento registrado!");
                        return false;
                        
                    }
                });

            });
        },
        
        guardadatos: function (objeto, accion) {
            $.get("EventosReco", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        }
        
        };
        
}());        