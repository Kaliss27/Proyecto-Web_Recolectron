function dPanelUser(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse1").innerHTML;
};

function dPanelCArt(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse2").innerHTML;
};

function dPanelCGral(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse3").innerHTML;
};

function dPanelRD(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse4").innerHTML;
};

function dPanelRV(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse5").innerHTML;
};

function dPanelImps(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse6").innerHTML;
};

function dPanelVinv(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse7").innerHTML;
};

function dPanelEdu(){
    document.getElementById("cpanel").innerHTML = document.getElementById("collapse8").innerHTML;
};
var VistaRapida = (function () {

    return {

        agregar: function () {
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
                        RegVisitas.agregar();
                        alert("Visita registrada!");
                        return false;
                    }
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
