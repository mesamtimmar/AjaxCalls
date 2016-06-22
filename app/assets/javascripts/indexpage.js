$(document).ready(function()
{


	$("p#first").on("click",function(){
    		alert("This is combined Alert");
    });
	

    $("#secondP").on("click", function(){
	    alert("Alert from second paragraph");
	});


    $("#first").on("click", function(){
		
	   
	    alert("Alert From First");
	});

    $("#second").on("click", function(){
	   event.preventDeafault();
	    alert("Alert From Seond");
	});

    $("#clickAlert").on("click", function(){
	    alert("This is the inner Paragraph");
	});


    $(document).on('click','.clickAlert', function() {
  		alert("A click happened from On1");
	});

    
     $(".clickAlert").on("click", function() {
  		alert("A click happened from On2");
	});


    


	



});