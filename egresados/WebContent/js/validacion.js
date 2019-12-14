var usuario="";
var pass="";
var ajax="";
$(function(){
	$("#Inicio").removeClass("red");
	$("#a-Inicio").removeClass("txtwhite");
	$("#a-Inicio").addClass("txtred");
	$("#Iniciar").addClass("red");
	$("#a-Iniciar").removeClass("txtred");
	$("#a-Iniciar").addClass("txtwhite");
})

$(document).on("click","#log",function(){
user=$("#user").val();
pass=$("#pass").val();
ajax=ajax__("login",user,pass);

ajax.done(function(response){
	if(response==="DONE/egresados"){
			setTimeout(function(){
				$("#log").html("BIENVENIDO!!");
				setTimeout(function(){
					window.location.replace("perfilegresado.html");	
				},2000)
			},2000);
		}else{
			setTimeout(function(){
				$("#log").html("ESTE USUARIO NO EXISTE!");
				setTimeout(function(){
					$("#log").html("login");	
				},2000)
				
			},2000);			
		}
	});
});
$(document).on("click","#recu",function(){
	
})
function ajax__(url,user,pass){
var ajax1=$.ajax({
	type:'POST',
	url:url,
	data:{'user':user,'pass':pass}
});
return ajax1;
}