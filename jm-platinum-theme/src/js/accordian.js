

$(document).ready(function () {
	$(".jmfooter__heading").click(function(){
	   $(this).parent(".jmfooter__lists").toggleClass("open"); 
	});
	
	$(".hidden__overlay").click(function(){
	   $(this).parents(".jmheader__navlist").find(".submenu__mb").toggle(); 
	});
});