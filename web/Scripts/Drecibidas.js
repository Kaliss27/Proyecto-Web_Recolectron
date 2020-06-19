$(document).ready(function () {
    $("#form_donrec").on('click', function () {
        DonRec.agregar();
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


