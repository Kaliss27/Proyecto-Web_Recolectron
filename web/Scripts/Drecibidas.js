$(document).ready(function(){
    $("#btnAdd").click(function(){
       alert("Articulo"); 
    });
    
    $("#btnDR").click(function(){
  	 $("#my-form1").on('submit', function(evt){
            evt.preventDefault();  
            $.ajax(
	        {
		    url:'RegistroDR.jsp',
		    type:"POST",
		    data:$("#my-form1").serialize(),
		    success:function(data){ 
                        $(".alert").show();
                    },
		    error:function(data){ alert("Error al iniciar sesión");}
		});
		});
	});
});


