var id;
$(document).ready(function () {
    $("#visActividades1").on('click', function () {
        Actividades_Contribuyente.agregar();
    });

});
var Actividades_Contribuyente = (function () {

    return {

        agregar: function () {
            $.get("Actividades_Contribuyente", {
                ACCION: "AGREGAR"
            }).then(function () {
                $(document.body).html(arguments[0]);

                $(".editar").on("click", function () {
                    id = $(this).parents("tr").attr("id");
                });

                $("#btnEditar").on("click", function () {

                    var text = "";
                    if ($.trim($("#txtD").val()).length === 0) {
                        text = text + "Descripcion\n";
                    }
                    if ($.trim($("#selectRE2").val()).length === 0) {
                        text = text + "Material\n";
                    }
                    if ($.trim($("#fechaIn").val()).length === 0) {
                        text = text + "Fecha Inicio\n";
                    }
                    if ($.trim($("#hIn").val()).length === 0) {
                        text = text + "Hora Inicio\n";
                    }
                    if ($.trim($("#fechaRgs").val()).length === 0) {
                        text = text + "Fecha Fin\n";
                    }
                    if ($.trim($("#hTer").val()).length === 0) {
                        text = text + "Hora Fin\n";
                    }
                    

                    if (text.length > 0) {
                        alert('Debe llenar los campos de Cantidad y/o Peso');
                        return false;
                    } else {
                        var Actividad = {
                            "id": id,
                            "descripcion": $('#txtD').val(),
                            "fecha_hora_ini": $('#fechaIn').val(),
                            "hora_ini": $('#hIn').val(),
                            "fecha_hora_fin": $("#fechaRgs").val(),
                            "hora_fin": $("#hTer").val(),
                            "material": $("#selectRE2").val()
                        };
                        Actividades_Contribuyente.guardadatos(Actividad, "Editar Actividad");
                        alert("¡¡Actividad Editada Correctamente!!");
                        Actividades_Contribuyente.agregar();
                        return true;

                    }
                    ;

                });

                $(".borrar").on("click", function () {
                    id = $(this).parents("tr").attr("id");
                    Actividades_Contribuyente.eliminar(id);
                    alert("¡¡Articulo Eliminado Correctamente!!");
                    Actividades_Contribuyente.agregar();
                });
                
                $(".clear").on("click", function () {
                    id = $(this).parents("tr").attr("id");
                    Actividades_Contribuyente.eliminar(id);
                    alert("¡¡Material Eliminado Correctamente!!");
                    Actividades_Contribuyente.agregar();
                });
                
                $("#linea").on("click", function () {
                    $(".dropdown-menu").show();
                });
                $("#linea").on("click", function () {
                    $(".dropdown-toggle").show();
                });

                $("#btnRegA").on("click", function () {

                    var text = "";
                    if ($.trim($("#txtD2").val()).length === 0) {
                        text = text + "Descripcion\n";
                    }
                    if ($.trim($("#selectRE").val()).length === 0) {
                        text = text + "Material\n";
                    }
                    if ($.trim($("#fechaIni").val()).length === 0) {
                        text = text + "Fecha Inicio\n";
                    }
                    if ($.trim($("#hIni").val()).length === 0) {
                        text = text + "Hora Inicio\n";
                    }
                    if ($.trim($("#fechaRgs1").val()).length === 0) {
                        text = text + "Fecha Fin\n";
                    }
                    if ($.trim($("#hTerm").val()).length === 0) {
                        text = text + "Hora Fin\n";
                    }

                    if (text.length > 0) {
                        alert('Debe llenar los campos de Cantidad y/o Peso');
                        return false;
                    } else {
                        var Activity = {
                            "descripcion": $('#txtD2').val(),
                            "fecha_hora_ini": $('#fechaIni').val(),
                            "hora_ini": $('#hIni').val(),
                            "fecha_hora_fin": $("#fechaRgs1").val(),
                            "hora_fin": $("#hTerm").val(),
                            "material": $("#selectRE").val()
                            
                        };
                        Actividades_Contribuyente.guardadatos(Activity, "Registrar Actividad");
                        alert("¡¡Actividad Registrada Correctamente!!");
                        Actividades_Contribuyente.agregar();
                        return true;

                    }
                    ;

                });

                $("#btnArt").on("click", function () {

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
                        Actividades_Contribuyente.guardadatos(Articulo, "Registrar Articulo");
                        alert("¡¡Articulo Registrado Correctamente!!");
                        Actividades_Contribuyente.agregar();
                        return true;

                    }
                    ;

                });


            });

        },
        guardadatos: function (objeto, accion) {
            $.get("Actividades_Contribuyente", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        },

        eliminar: function (id) {
            $.get("Actividades_Contribuyente", {
                ACCION: "Eliminar",
                id_eliminar: id
            });
        }


    };
}());

