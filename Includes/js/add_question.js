
	
//Function To Toggle the Add Your Answer Button And text Feild in Question page
function show(){		
	
		
	$("#form-Ans").toggle();	
	$("#btn1").toggle();
	$("#btn2").toggle();
	
}

function addAns(){
	
	$ans=$("#ans").val();
	$q_id=$("#q_id").val();
	$u_id=$("#u_id").val();
	$u_name=$("#u_name").val();
	$("#ans").val("");
	$("#form-Ans").toggle();	
	$("#btn1").toggle();
	$("#btn2").toggle();
	
	
	$.ajax({
		url:"Includes/php/add_answer.php",
		type:"POST",
		data:{
			ans:$ans,
			q_id:$q_id,
			u_id:$u_id,
			name:$u_name
		},
		datatype:"json",
		success:function(data){
			$("#answers").prepend(data);
		}
	});
	
}

