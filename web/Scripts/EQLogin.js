$(document).ready(function(){
    $("#login").click(function(){
  	 $("#my-form").on('submit', function(evt){
            evt.preventDefault();  
            $.ajax(
	        {
		    url:'EQReco.jsp',
		    type:"POST",
		    data:$("#my-form").serialize(),
		    success:function(data){ 
                        alert("Bienvenido");
                        $(location).attr('href','vistaRapida.jsp');
                    },
		    error:function(data){ alert("Error al iniciar sesión");}
		});
		});
	});
});


