$(document).ready(function(){
    $("#btnE").click(function(){
  	 $("#eventF").on('submit', function(evt){
            evt.preventDefault();  
            $.ajax(
	        {
		    url:'Eventos.jsp',
		    type:"POST",
		    data:$("#eventF").serialize(),
		    success:function(data){ 
                        $(".alert").show();
                    },
		    error:function(data){ alert("Error");}
		});
		});
	});
});


