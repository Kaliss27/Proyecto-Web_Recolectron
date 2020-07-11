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

                $("#btnDEE").on('click', function () {

                    var text = "";
                    if ($.trim($("#matricula").val()).length === 0) {
                        text = text + "Matricula\n";
                    }
                    if ($.trim($('input[name=nombre]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=apaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=amaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($("#selectPE").val()).length === 0) {
                        text = text + "Programa Educativo\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {

                        return false;
                    }
                });

                $("#btnDEP").on('click', function () {

                    var text = "";
                    if ($.trim($("#destinatario").val()).length === 0) {
                        text = text + "Destinatario\n";
                    }
                    if ($.trim($("#phone").val()).length === 0) {
                        text = text + "Telefono\n";
                    }
                    if ($.trim($("#emailC").val()).length === 0) {
                        text = text + "Correo\n";
                    }
                    if ($.trim($("#textCausa").val()).length === 0) {
                        text = text + "Causa\n";
                    }
                    if ($.trim($("#dateT").val()).length === 0) {
                        text = text + "Fecha\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {

                        return false;
                    }
                });

                $("#regdatos").on('click', function () {

                    var text = "";
                    if ($.trim($("#destinatario").val()).length === 0) {
                        text = text + "Destinatario\n";
                    }
                    if ($.trim($("#phone").val()).length === 0) {
                        text = text + "Telefono\n";
                    }
                    if ($.trim($("#emailC").val()).length === 0) {
                        text = text + "Correo\n";
                    }
                    if ($.trim($("#textCausa").val()).length === 0) {
                        text = text + "Causa\n";
                    }
                    if ($.trim($("#dateT").val()).length === 0) {
                        text = text + "Fecha\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {

                        var Publico_General = {
                            "destinatario": $("#destinatario").val(),
                            "telefono": $("#phone").val(),
                            "correo": $("#emailC").val(),
                            "fecha": $("#dateT").val(),
                            "causa": $("#textCausa").val()
                        };
                        DonEm.guardadatos_pg(Publico_General,'Guardar Datos Publico');
                         alert("Datos Guardados");
                        return false;
                    }
                });

                $("#regdatosest").on('click', function () {

                    var text = "";
                    if ($.trim($("#matricula").val()).length === 0) {
                        text = text + "Matricula\n";
                    }
                    if ($.trim($('input[name=nombre]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=apaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($('input[name=amaterno]').val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($("#selectPE").val()).length === 0) {
                        text = text + "Programa Educativo\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {
                        var Estudiante = {
                            "matricula": $("#matricula").val(),
                            "nombre": $('input[name=nombre]').val(),
                            "apaterno": $('input[name=apaterno]').val(),
                            "amaterno": $('input[name=amaterno]').val(),
                            "fk_dependencia": $("#selectPE").val(),
                            "fecha": $("#fechaRgs").val()
                        };
                        DonEm.guardadatos_estudiante(Estudiante, 'Guardar Datos Estudiante');
                        alert("Datos Guardados");
                        return false;
                    }
                });

            });


        },
        guardadatos_estudiante: function (objeto, accion) {
            $.get("DonEm", {
                ACCION: accion,
                DATOS_ESTUDIANTE: JSON.stringify(objeto)
            });

        },
        guardadatos_pg: function (objeto, accion) {
            $.get("DonEm", {
                ACCION: accion,
                DATOS_PUBLICOG: JSON.stringify(objeto)
            });

        }


    };
}());