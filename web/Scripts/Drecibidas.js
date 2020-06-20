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
    

    $("#selectCat").on('click',function () {
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
             $("#selectRE").append('<option value='+indices[i]+'>'+elem[i]+'</option>');
        }

        $("#selectRE").on('click',function () {
            console.log("index:",$('select[id=selectRE]').val());
        });
        
        
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
                     if ($.trim($("#cntN").val()).length === 0) {
                        text = text + "Cantidad\n";
                    }
                     if ($.trim($("#PxUi").val()).length === 0) {
                        text = text + "Peso\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar todos los campos');
                        return false;
                    } else {
                        return true;
                    }
                });



                });
        }

    };
    
    
}());


