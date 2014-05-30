$(function(){
 
	// Text resizer
	$(".text-sizer a").textresizer({
   target: "body",
   type: "fontSize",
   sizes: [ "14px", "15px", "16px", ],
   selectedIndex: 1
	});

	$('input').iCheck({
	   checkboxClass: 'icheckbox_minimal-blue',
	   radioClass: 'iradio_minimal-blue',
	   increaseArea: '20%' // optional
	});

	var exampleOptions = {
	  speed: 'fast'
	}
	// initialise plugin
	var example = $('#main-menu').superfish(exampleOptions);

});