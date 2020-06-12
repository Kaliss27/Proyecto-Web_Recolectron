$(document).ready(function(){
    $("#btnRV").click(function(){
  	 $("#my-form").on('submit', function(evt){
            evt.preventDefault();  
            $.ajax(
	        {
		    url:'RegistroVisita.jsp',
		    type:"POST",
		    data:$("#my-form").serialize(),
		    success:function(data){ 
                        $(".alert").show();
                    },
		    error:function(data){ alert("Error al iniciar sesión");}
		});
		});
	});
});
