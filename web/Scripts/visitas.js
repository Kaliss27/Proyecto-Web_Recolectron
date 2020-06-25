$(document).ready(function () {
    $("#form_visita").on('click', function () {
        RegVisitas.agregar();
    });
});

var RegVisitas = (function () {

    return {
        
        agregar: function () {
            $.get("RegVisitas", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                $("#btnRV").on('click', function () {
                    var text = "";
                    if ($.trim($("#matricula").val()).length === 0) {
                        text = text + "Matricula\n";
                    }
                    if ($.trim($('input[name=nombre]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=appaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=apmaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($("#selectPE").val()).length === 0) {
                        text = text + "Programa Educativo\n";
                    }
                    if ($.trim($("#selectTV").val()).length === 0) {
                        text = text + "Motivo de Visita\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {
                        var Registro_Visitas = {
                            "matricula": $("#matricula").val(),
                            "nombre": $('input[name=nombre]').val(),
                            "apaterno": $('input[name=appaterno]').val(),
                            "amaterno": $('input[name=apmaterno]').val(),
                            "pe_dependencia": $("#selectPE").val(),
                            "tipo_visita": $("#selectTV").val(),
                            "fecha": $("#fechaRgs").val()
                        };
                        RegVisitas.guardadatos(Registro_Visitas, 'Guardar');
                        $(".alert").show();
                        return true;
                    }
                });

                });
        },
         guardadatos: function (objeto, accion) {
            $.get("RegVisitas", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        }


    };
}());


