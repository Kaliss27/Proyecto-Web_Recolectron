var datos=new Array();
var datospg = new Array();
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
                        datos.forEach(element => DonEm.guardadatos_estudiante(element,"Registrar_Donacion_Estudiante"));
                        DonEm.agregar();
                        $(".alert").show();
                        alert("!Donación emitida registrada!");
                        datos.splice(0,datos.length);

                        return true;
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
                        datospg.forEach(element => DonEm.guardadatos_pg(element,"Registrar_Donacion_PublicoGral"));
                        DonEm.agregar();
                        $(".alert").show();
                        alert("!Donación emitida registrada!");
                        datospg.splice(0,datos.length);

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
                $("#addArticulo1").on('click', function () {
                    var DonacionAlumno = {
                                "fk_componente": $('#selectArt').val(),
                                "cantidad": $('#cntN1').val()
                            };
                           datos.push(DonacionAlumno);
                           console.log(datos);
                    $("#tbarticulos1 tbody").append('<tr><td>' + $('select[name="Articulos"] option:selected').text() + '</td>' + '<td>' + $("#cntN1").val() + '</td>' + '<</tr>');
                    $("#cntN1").val("");
                    return false;
                });
                $("#btnDelArticulo1").on('click', function () {
                    var trs = $("#tbarticulos1 tr").length;
                    if (trs > 1)
                    {
                        $("#tbarticulos1 tr:last").remove();
                    }
                    datos.pop();
                    return false;
                });
                
                $("#addArticulo2").on('click', function () {
                    var DonacionPublicoG = {
                                "fk_articulo": $('#selectArt2').val(),
                                "cantidad": $('#cntN2').val()
                            };
                           datospg.push(DonacionPublicoG);
                           console.log(datos);
                    $("#tbarticulos2 tbody").append('<tr><td>' + $('select[name="Articulo"] option:selected').text() + '</td>' + '<td>' + $("#cntN2").val() + '</td>' + '<</tr>');
                    $("#cntN2").val("");
                    return false;
                });
                $("#btnDelArticulo2").on('click', function () {
                    var trs = $("#tbarticulos2 tr").length;
                    if (trs > 1)
                    {
                        $("#tbarticulos2 tr:last").remove();
                    }
                    datospg.pop();
                    return false;
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

function pForm(){
    $("#content2").hide();
    $("#content1").show();
};
function pConsultas(){
    $("#content1").hide();
    $("#content2").show();
};