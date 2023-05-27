$(document).ready(function(){

    var safe_ques = 0;
    var safe_desc = 0;
    
	$("#question").blur(function(){
        var result = verify($(this).val())
        if(result == true){
            safe_ques = 1;
            $("#err_ques").hide();
        }else{
            safe_ques = 0;
            $("#err_ques").show()
        }
    });
	

    $("#quest_form").submit(function(event){
        event.preventDefault();
        if(safe_desc == 1 && safe_ques == 1){
            var ques = $("#question").val();
            var cat = $("#catagory").val();

            if(cat == 'none'){
                $("#err_cat").show();
            }else{
                $("#err_cat").hide();
				
                
            }
        }
    });

    function verify(data){
        var pattern = /[a-zA-Z0-9\?\.\'\"\!-\s]+$/
        return pattern.test(data);
    }

});