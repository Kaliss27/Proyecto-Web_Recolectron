$(document).ready(function(){
    $("#login").click(function(){
        $("#my-form").on('submit', function(evt){
            evt.preventDefault();
            alert("Bienvenido");
        });
    });
});


