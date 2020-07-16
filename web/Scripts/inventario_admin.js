$(document).ready(function () {
    $("#visInventario").on('click', function () {
        Inventario_Admin.agregar();
    });
    
    $("#formaux").hide();
    $("#formaux2").hide();
    $("#formaux_1").hide();
    $("#formaux2_1").hide();

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
    
    
     var elementos2 = new Array();
    $("#formaux_1 option").each(function ()
    {
        elementos2.push($(this).text());
    });

    var ids2 = new Array();
    $("#formaux_1 option").each(function ()
    {
        ids2.push($(this).attr('value'));
    });

    var categorias2 = new Array();
    $("#formaux2_1 option").each(function ()
    {
        categorias2.push($(this).attr('value'));
    });


    $("#selectCat2").on('click', function () {
        var cat2 = $('select[id=selectCat2]').val();

        var indices2 = new Array();
        var elem2 = new Array();
        for (var i = 0; i < categorias2.length; i += 1) {
            if (categorias2[i] === cat2) {
                elem2.push(elementos[i]);
                indices2.push(ids[i]);
            }
        }

        $("#selectRE2").empty();

        for (var i = 0; i < elem2.length; i += 1) {
            $("#selectRE2").append('<option value=' + indices2[i] + '>' + elem2[i] + '</option>');
        }

    });
});

var Inventario_Admin = (function () {

    return {

        agregar: function () {
            $.get("Inventario_Admin", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);

            });
        },
        guardadatos: function (objeto, accion) {
            $.get("Inventario_Admin", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        }


    };
}());