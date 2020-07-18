var id;
$(document).ready(function () {
    $("#visActividades").on('click', function () {
        Actividades_Admin.agregar();
    });

});
var Actividades_Admin = (function () {

    return {

        agregar: function () {
            $.get("Actividades_Admin", {
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
                        Actividades_Admin.guardadatos(Actividad, "Editar Actividad");
                        alert("¡¡Actividad Editada Correctamente!!");
                        Actividades_Admin.agregar();
                        return true;

                    }
                    ;

                });

                $(".borrar").on("click", function () {
                    id = $(this).parents("tr").attr("id");
                    Actividades_Admin.eliminar_act(id);
                    alert("¡¡Actividad Eliminada Correctamente!!");
                    Actividades_Admin.agregar();
                });
                
                $(".clear").on("click", function () {
                    id = $(this).parents("tr").attr("id");
                    Actividades_Admin.eliminar_mat(id);
                    alert("¡¡Material Eliminado Correctamente!!");
                    Actividades_Admin.agregar();
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
                        Actividades_Admin.guardadatos(Activity, "Registrar Actividad");
                        alert("¡¡Actividad Registrada Correctamente!!");
                        Actividades_Admin.agregar();
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
                        Actividades_Admin.guardadatos(Articulo, "Registrar Articulo");
                        alert("¡¡Articulo Registrado Correctamente!!");
                        Actividades_Admin.agregar();
                        return true;

                    }
                    ;

                });


            });

        },
        guardadatos: function (objeto, accion) {
            $.get("Actividades_Admin", {
                ACCION: accion,
                DATOS: JSON.stringify(objeto)
            });
        },

        eliminar_mat: function (id) {
            $.get("Actividades_Admin", {
                ACCION: "Eliminar Material",
                id_eliminar: id
            });
        },
        eliminar_act: function (id) {
            $.get("Actividades_Admin", {
                ACCION: "Eliminar Actividad",
                id_eliminar: id
            });
        }

    };
}());