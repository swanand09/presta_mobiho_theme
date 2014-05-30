{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA

*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
     
<script type="text/javascript">
	$(document).ready(function(){
	  var originalSize = $('div').css('font-size');
	  
	 // reset
	  $(".resetMe").click(function(){
		//$('#index').css('font-size', originalSize);
		  $("body").css("font-size",originalSize);
		  $(".egrnews_img p").css("font-size","14px");
		  $("p").css("font-size","14px");
		  $("li").css("font-size","14px");
		   $("span").css("font-size","14px");
		  $(".sf-contener li a").css("font-size","16px");
		  $("h2").css("font-size",originalSize);
		  $("#header_user_info").css("font-size","12px");
		  $("#shopping_cart a").css("font-size","12px");
		  $("#shopping_cart span").css("font-size","12px");
		  
		  $("#header_right #header_user").css("margin-right","-22px");
		  
		  

	  });

	  // Increase Font Size
	  $(".increase").click(function(){		
	    //$('#index').css('font-size', 17);
	    $("body").css("font-size","17px");
	    $(".egrnews_img p").css("font-size","17px");
	    $("p").css("font-size","17px");
	    $("span").css("font-size","17px");
	    $(".sf-contener li a").css("font-size","17px");
	    $("h2").css("font-size","17px");
	    $("#shopping_cart a").css("font-size","17px");
	    $("#shopping_cart span").css("font-size","17px");
	    $("#header_right #header_user").css("margin-right","0px");
	    $("li").css("font-size","17px");
	    
	    return false;
	  });

	  // Decrease Font Size
	  $(".decrease").click(function(){		
	    //$('#index').css('font-size', 15);
	    $("body").css("font-size","15px");
	    $(".egrnews_img p").css("font-size","15px");
	    $("p").css("font-size","15px");
	    $("li").css("font-size","15px");
	    $("span").css("font-size","15px");
	    $(".sf-contener li a").css("font-size","15px");
	    $("h2").css("font-size","15px");
	    $("#shopping_cart a").css("font-size","15px");
	    $("#shopping_cart span").css("font-size","15px");
	    $("#header_right #header_user").css("margin-right","-12px");
	    
	    return false;
	  });
});
</script>
<div class="zoom_top">
<input type="button" class="increase zoom-3" value="" title="Agrandir">
<input type="button" class="decrease zoom-2" value="" title="Agrandir"/>
<input type="button" class="resetMe zoom-1" value="" title="remettre">
</div>
