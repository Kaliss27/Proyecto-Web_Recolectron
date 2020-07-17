var id;
$(document).ready(function () {
    $("#visInventario1").on('click', function () {
        Inventario_Contribuyente.agregar();
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

var Inventario_Contribuyente = (function () {

    return {

        agregar: function () {
            $.get("Inventario_Contribuyente", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);
                $(".editar").on("click",function(){
                  id = $(this).parents("tr").attr("id"); 
                });
                
                $("#btnEdit").on("click",function(){
                    
                    var text = "";
                    if ($.trim($("#cntN_1").val()).length === 0) {
                        text = text + "Cantidad\n";
                    }
                    if ($.trim($("#PxUi_1").val()).length === 0) {
                        text = text + "Peso\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar los campos de Cantidad y/o Peso');
                        return false;
                    } else {
                        var Inventario = {
                            "id": id,
                            "fk_re": $('#selectRE').val(),
                            "cantidad": $('#cntN_1').val(),
                            "peso_x_unidad": $('#PxUi_1').val(),
                            "estado": $("#selectEstado").val(),
                            "notas": $("#txtNote").val()
                        };
                        Inventario_Contribuyente.guardadatos(Inventario,"Editar Inventario");
                        alert("¡¡Articulo Editado Correctamente!!");
                        Inventario_Contribuyente.agregar();
                        return true;
 
                    };
                    
                });
                
                $(".borrar").on("click",function(){
                  id = $(this).parents("tr").attr("id");
                  Inventario_Contribuyente.eliminar(id);
                  alert("¡¡Articulo Eliminado Correctamente!!");
                  Inventario_Contribuyente.agregar();
                });
                
                $("#btnReg").on("click",function(){
                    
                    var text = "";
                    if ($.trim($("#nameRE").val()).length === 0) {
                        text = text + "Residuo\n";
                    }
                    if ($.trim($("#costPxU").val()).length === 0) {
                        text = text + "Costo\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar los campos de Cantidad y/o Peso');
                        return false;
                    } else {
                        var Residuo_Electronico = {
                            "descripcion": $('#nameRE').val(),
                            "categoria": $('#selectCat').val(),
                            "costoxunidad": $('#costPxU').val()
                        };
                        Inventario_Contribuyente.guardadatos(Residuo_Electronico,"Registrar Residuo");
                        alert("¡¡Residuo Registrado Correctamente!!");
                        Inventario_Contribuyente.agregar();
                        return true;
 
                    };
                    
                });
                
                $("#btnArt").on("click",function(){
                    
                    var text = "";
                    if ($.trim($("#cntN2").val()).length === 0) {
                        text = text + "Cantidad\n";
                    }
                    if ($.trim($("#PxUi_2").val()).length === 0) {
                        text = text + "Peso\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar los campos de Cantidad y/o Peso');
                        return false;
                    } else {
                        var Articulo = {
                            "fk_re": $('#selectRE2').val(),
                            "cantidad": $('#cntN2').val(),
                            "peso_x_unidad": $('#PxUi_2').val(),
                            "estado": $("#selectEdo").val(),
                            "notas": $("#txtNote2").val()
                        };
                        Inventario_Contribuyente.guardadatos(Articulo,"Registrar Articulo");
                        alert("¡¡Articulo Registrado Correctamente!!");
                        Inventario_Contribuyente.agregar();
                        return true;
 
                    };
                    
                });
                
                $("#linea").on("click", function () {
                    $(".dropdown-menu").show();
                });
                

            });
        },
        guardadatos: function (objeto, accion) {
            $.get("Inventario_Contribuyente", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        },
        
        eliminar: function (id) {
            $.get("Inventario_Contribuyente", {
                ACCION: "Eliminar",
                id_eliminar: id
            });
        }


    };
}());