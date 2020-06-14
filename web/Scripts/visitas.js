
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
                    if ($.trim($("#pwd").val()).length === 0) {
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
                        $(".alert").show();
                        return true;
                    }
                });



                });
        }            

    };
}());




