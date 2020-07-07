var datos=new Array();
$(document).ready(function () {
    $("#form_donrec").on('click', function () {
        DonRec.agregar();
    });

    $("#formaux").hide();
    $("#formaux2").hide();


    var elementos = new Array();
    $("#formaux option").each(function ()
    {
        elementos.push($(this).text());
    });

    var ids = new Array();
    $("#formaux option").each(function ()
    {
        ids.push($(this).attr('value'));
    });

    var categorias = new Array();
    $("#formaux2 option").each(function ()
    {
        categorias.push($(this).attr('value'));
    });


    $("#selectCat").on('click', function () {
        var cat = $('select[id=selectCat]').val();

        var indices = new Array();
        var elem = new Array();
        for (var i = 0; i < categorias.length; i += 1) {
            if (categorias[i] === cat) {
                elem.push(elementos[i]);
                indices.push(ids[i]);
            }
        }

        $("#selectRE").empty();

        for (var i = 0; i < elem.length; i += 1) {
            $("#selectRE").append('<option value=' + indices[i] + '>' + elem[i] + '</option>');
        }

    });

});


var DonRec = (function () {

    return {

        agregar: function () {
            $.get("DonRec", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                $("#btnDR").on('click', function () {

                    var text = "";
                    if ($.trim($("#selectOrgn").val()).length === 0) {
                        text = text + "Origen\n";
                    }
                    if ($.trim($("#pwd").val()).length === 0) {
                        text = text + "Nombre o Apellidos\n";
                    }
                    if ($.trim($("#telefono").val()).length === 0) {
                        text = text + "Telefono\n";
                    }
                    if ($.trim($("#emailDRid").val()).length === 0) {
                        text = text + "Correo\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha\n";
                    }
                    if ($.trim($("#selectCat").val()).length === 0) {
                        text = text + "Categoria\n";
                    }
                    if ($.trim($("#selectRE").val()).length === 0) {
                        text = text + "Residuo\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {
                        datos.forEach(element => DonRec.guardadatos(element,"Registrar"));
                        DonRec.agregar();
                        $(".alert").show();
                        alert("!Donación registrada!");
                        datos.splice(0,datos.length);
                        return true;
                    }
                });
                $("#regdatos").on('click', function () {
                    var Donaciones_Recibidas = {
                        "origen": $("#selectOrgn").val(),
                        "nombre": $('#pwd').val(),
                        "telefono": $('#telefono').val(),
                        "correo": $('#emailDRid').val(),
                        "fecha": $("#fechaRgs").val()
                    };
                    DonRec.guardadatos(Donaciones_Recibidas, 'Guardar');
                    alert("Datos Guardados");
                    return false;
                });
                $("#btnAdd").on('click', function () {
                    var Recepcion = {
                                "fk_re": $('#selectRE').val(),
                                "cantidad": $('#cntN').val(),
                                "pesoxunidad": $('#PxUi').val()
                            };
                           datos.push(Recepcion);
                    $("#tbarticulos tbody").append('<tr><td>' + $('select[name="PEs"] option:selected').text() + '</td>' + '<td>' + $("#cntN").val() + '</td>' + '<td>' + $("#PxUi").val() + '</td></tr>');
                    $("#cntN").val("");
                    $("#PxUi").val("");
                    return false;
                });
                $("#btnDel").on('click', function () {
                    var trs = $("#tbarticulos tr").length;
                    if (trs > 1)
                    {
                        $("#tbarticulos tr:last").remove();
                    }
                    datos.pop();
                    return false;
                });

            });
        },
        guardadatos: function (objeto, accion) {
            $.get("DonRec", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });

        }


    };


}());


