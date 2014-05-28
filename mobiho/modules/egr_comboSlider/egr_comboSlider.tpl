{if $page_name eq 'index'}
<input type="hidden" value="{$module_dir}" id="module_dir" name="module_dir" />
<script type="text/javascript" src="{$module_dir}js/jquery.easing.js"></script>
<script type="text/javascript" src="{$module_dir}js/script.js"></script>
{if $style eq '1'}
	<link rel="stylesheet" href="{$module_dir}css/style1.css" type="text/css" media="screen" />
{elseif $style eq '2'}
	<link rel="stylesheet" href="{$module_dir}css/style2.css" type="text/css" media="screen" />
{elseif $style eq '3'}
	<link rel="stylesheet" href="{$module_dir}css/style3.css" type="text/css" media="screen" />
{elseif $style eq '4'}
	<link rel="stylesheet" href="{$module_dir}css/style4.css" type="text/css" media="screen" />
{elseif $style eq '5'}
	<link rel="stylesheet" href="{$module_dir}css/style6.css" type="text/css" media="screen" />
{elseif $style eq '6'}
	<link rel="stylesheet" href="{$module_dir}css/egr_slider.css" type="text/css" media="screen" />
	<script type="text/javascript" src="{$module_dir}js/AwesomeSlider.js"></script>
{elseif $style eq '7'}
	<link rel="stylesheet" href="{$module_dir}css/style7.css" type="text/css" media="screen" />	
{elseif $style eq '8'}
	<link rel="stylesheet" href="{$module_dir}css/style8.css" type="text/css" media="screen" />
{elseif $style eq '9'}
	<link rel="stylesheet" href="{$module_dir}css/style9.css" type="text/css" media="screen" />
{elseif $style eq '10'}
	<link rel="stylesheet" href="{$module_dir}css/style10.css" type="text/css" media="screen" />
{elseif $style eq '11'}
	<link rel="stylesheet" href="{$module_dir}css/egr_NumericSlider.css" type="text/css" media="screen" />
	<script type="text/javascript" src="{$module_dir}js/egr_NumericSlider.js"></script>
{elseif $style eq '12'}
	<link rel="stylesheet" href="{$module_dir}css/egr_TextSlider.css" type="text/css" media="screen" />
	<script type="text/javascript" src="{$module_dir}js/egr_TextSlider.js"></script>
{elseif $style eq '13'}
	<link rel="stylesheet" href="{$module_dir}css/egr_BulletSlider.css" type="text/css" media="screen" />
	<script type="text/javascript" src="{$module_dir}js/egr_BulletSlider.js"></script>	
{/if}

<!--<div id="container">-->
 {if $SLIDESHOW == 1}
        </div>
  {/if}

{if $style eq '1'}
<div id="jslidernews1" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">

	<div class="preload"><div></div></div>
    		 <!-- MAIN CONTENT --> 
              <div class="main-slider-content" style="width:100%; height:340px;">
                <ul class="sliders-wrap-inner">
			{foreach from=$contents item=content key=k}
				<li style="width:100%">					
					<a href="{$urlArr.$k}">{$content}
					<div class="slider-description" >
						<div class="divHead">{$heading.$k|truncate:50:' ..'}</div>
						{if $description.$k!='' && $description.$k!='<br>'}<div class="desc">{$description.$k} </div>{/if}
					</div></a>
				</li>
			{/foreach}                   
                  </ul>  	
            </div>
           	<div class="navigator-content">
                  <div class="button-next">Next</div>
                  <div class="navigator-wrapper">
                        <ul class="navigator-wrap-inner">
				{foreach from=$thumb item=thumb_image key=k}
					<li>{$thumb_image}</li>					
				{/foreach}                          
                        </ul>
                  </div>
                  <div  class="button-previous">Previous</div>
             </div> 
          <div class="button-control"><span></span></div>
{literal}  
<script type="text/javascript">
$(document).ready( function(){     
     // buttons for next and previous item     
     var buttons = { previous:$('#jslidernews1 .button-previous'),
     next:$('#jslidernews1 .button-next') };
     $('#jslidernews1').lofJSidernews({
       interval: 4000,  direction: 'opacitys',easing: 'easeInOutExpo',duration: 1200,auto: true,maxItemDisplay: 4,
       navPosition     	: 'horizontal',navigatorHeight 	: 32,navigatorWidth : 50,mainWidth: 980,buttons: buttons
     });
});

</script>
{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
{elseif $style eq '2'} 
<!------------------------------------- THE CONTENT ------------------------------------------------->
<div id="jslidernews2" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
	<div class="preload"><div></div></div>
            <div  class="button-previous">Previous</div>                   
    		 <!-- MAIN CONTENT --> 
              <div class="main-slider-content" style="width:100%; height:340px;">
                <ul class="sliders-wrap-inner">
                       {foreach from=$contents item=content}
				<li>
					{$content}
				</li>
			{/foreach}          
                  </ul>  	
            </div>
           <!-- END MAIN CONTENT --> 
           <!-- NAVIGATOR -->
           	<div class="navigator-content">
                    <div class="navigator-wrapper">
                        <ul class="navigator-wrap-inner">
				{foreach from=$thumb item=thumb_image key=k}
					<li>
						<div style="float:left; padding-right:2px; width:288px; line-height:1.5;">
						{$thumb_image}
						<h3>  {$heading.$k|truncate:20:' ..'}</h3> 
                        {if $description.$k!=""}<span>{$description.$k}</span>{/if}
						</div>
					</li>					
				{/foreach}    		
                        </ul>
                    </div>
                </div>
          <!----------------- END OF NAVIGATOR --------------------->
          <div class="button-next">Next</div>
 		 <!-- BUTTON PLAY-STOP -->
          <div class="button-control"><span></span></div>
          <!-- END OF BUTTON PLAY-STOP -->
{literal}
<script>

	$(document).ready( function(){	
		var buttons = { previous:$('#jslidernews2 .button-previous') ,	next:$('#jslidernews2 .button-next') };			 
		$('#jslidernews2').lofJSidernews( { interval:5000, easing:'easeInOutQuad', duration:1200, auto:true,
		mainWidth:980, mainHeight:340, navigatorHeight: 115,navigatorWidth : 320, maxItemDisplay:3,
		buttons:buttons } );						
	});

</script>
{/literal}	
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
{elseif $style eq '3'}
	<div id="jslidernews3" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
		<div class="preload"><div></div></div>
		<div  class="button-previous">Previous</div>
		<!-- MAIN CONTENT --> 
		<div class="main-slider-content" style="width:100%; height:340px;">
			<ul class="sliders-wrap-inner">
				{foreach from=$contents item=content key=k}
					<li>
						{$content}
						<div class="slider-meta">
							<h4>	{$heading.$k}	  </h4>
							{if $description.$k != ''}<p>{$description.$k}</p>{/if}
						</div>
                       
					</li>
				{/foreach}  
                
			</ul>
			
		</div>
		<!-- END MAIN CONTENT --> 
           <!-- NAVIGATOR -->
		<div class="navigator-content">
                  <div class="navigator-wrapper">
                        <ul class="navigator-wrap-inner">
				{foreach from=$thumb item=thumb_image key=k}
					<li>
						<div style="float:left; padding-right:2px; width:215px; line-height:1.5;">
						{$thumb_image}
						<h3>  {$heading.$k|truncate:20:' ..'}</h3> 
						<span>{$description.$k|strip_tags:true|truncate:60}</span>
						</div>
					</li>					
				{/foreach}    
                          	
                        </ul>
                  </div>
   
             </div> 
          <!----------------- END OF NAVIGATOR --------------------->
                            <div class="button-next">Next</div>
{literal}
<script type="text/javascript">
$(document).ready( function(){	
var buttons = { previous:$('#jslidernews3 .button-previous'),next:$('#jslidernews3 .button-next') };
$('#jslidernews3').lofJSidernews( { interval:5000,easing:'easeOutBounce', duration:1200,
auto:false,mainWidth:980,mainHeight:300,navigatorHeight:86,navigatorWidth:250,maxItemDisplay:4,
buttons:buttons} );						
});

</script>
{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->		
{elseif $style eq '4'}

 <div id="jslidernews1" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
	<div class="preload"><div></div></div>
    		 <div  class="button-previous">Previous</div>
              <div  class="button-next">Next</div>
    		 <!-- MAIN CONTENT --> 
              <div class="main-slider-content" style="width:100%; height:340px;">
                <ul class="sliders-wrap-inner">                    
			{foreach from=$contents item=content key=k}
				<li>
					{$content}
					<div class="slider-description">
                    	{if $heading.$k !=''}
                        	<div class="divHead">{$heading.$k|truncate:50:' ..'}</div>
                        {/if}
						{if $description.$k!='' && $description.$k!='<br>'}
                        	<div class="desc">{$description.$k} </div>
                        {/if}
					</div>
				</li>
                
			{/foreach} 
                  </ul>  	
            </div>
 		   <!-- END MAIN CONTENT --> 
           <!-- NAVIGATOR -->
           	<div class="navigator-content">
                  <!--<div class="button-control"><span></span></div>-->	
                  <div class="navigator-wrapper">
                        <ul class="navigator-wrap-inner"> {assign var=i value=1}
				{foreach from=$contents item=content key=k}
					<li>						
						<span>{$i++}</span>
					</li>					
				{/foreach}
                                                             		
                        </ul>
                  </div>
                
             </div> 
          <!----------------- END OF NAVIGATOR --------------------->

{literal}
<script type="text/javascript">
 $(document).ready( function(){
  // buttons for next and previous item						 
    var buttons = { previous:$('#jslidernews1 .button-previous') ,
     next:$('#jslidernews1 .button-next') };
     $obj = $('#jslidernews1').lofJSidernews( { interval : 4000,easing : 'easeInOutQuad',duration: 1200,auto: false,
	maxItemDisplay  : 4,startItem:1,navPosition : 'horizontal', navigatorHeight : null,navigatorWidth  : null,
	mainWidth:980,buttons:buttons} );		
	});
 
</script>{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->	
{elseif  $style eq '5'}

<div id="jslidernews3" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
	<div class="preload"><div></div></div>
            
            <div  class="button-previous">Previous</div>
                   
    <!-- MAIN CONTENT --> 
	<div class="main-slider-content" style="width:100%; height:340px;">
		<ul class="sliders-wrap-inner">
			{foreach from=$contents item=content key=k}
				<li>
					{$content}
                    {if $heading.$k !='' || $description.$k !=''}
					<div class="slider-description">
						<div class="description-wrapper">
							<div class="slider-meta"></div>							
                            	<h4>{$heading.$k|truncate:80:' ...'}</h4>								
	                                <p>{$description.$k} </p>
						</div>
					</div>
                    {/if}
				</li>
			{/foreach} 
		   
		</ul>  	
	</div>
	<!-- END MAIN CONTENT --> 
       <div class="button-next">Next</div>
    
    {literal}
	<script type="text/javascript">
	
	$(document).ready( function(){	
		var buttons = {
			previous:$('#jslidernews3 .button-previous') ,
			next:$('#jslidernews3 .button-next')
		};
		var _complete = function(slider, index){ 
			$('#jslidernews3 .slider-description').animate({
				height:0
			});
			slider.find(".slider-description").animate({
				height:100
			}); 
		};
		$('#jslidernews3').lofJSidernews({
			interval : 4000,direction: 'opacity',easing: 'easeOutBounce',duration: 1200,
			auto: true,mainWidth: 980,buttons: buttons,onComplete:_complete
		});
	});

   </script>
	{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->	
{elseif $style eq '6'}
	<div id="wrapper" style="width:100%;overflow:hidden; float:left; margin-bottom:10px; border:1px solid #999;">			
	    <div class="splash" id="slider_demo_1" style="width:100%;">
		    <table width="100%" >
			    <tr>
				    <td width="75%">
					    <div class="splash-content" style="float:left;" ></div>
				    </td>
				    <td valign='middle' height='50' width="25%" >
					    <div class="splash-controls">&nbsp;</div>
				    </td>
			    </tr>
		    </table>
	    </div>
	    <input type='hidden' value='{$module_dir}slider_1.xml' name='xmlPage' id='xmlPage' />
		
		{literal}
	<script>

		    jQuery(document).ready(function($)
		    {
			    //alert($('#xmlPage').val());
			    AwesomeSlider({
				    htmlIdentifier: '#slider_demo_1',
				    xmlSource: $('#xmlPage').val(),
				    continuous: true,
				    timer: 20000,
				    hasFading: true,
				    hasHeightToggleing: false,
				    fading: 500
			    });
		    });

	</script>
		{/literal}    
	<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
	
{elseif $style eq '7'}
	<div id="jslidernews1" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
		<div class="preload"><div></div></div>
			 <!-- MAIN CONTENT --> 
		      <div class="main-slider-content" style="width:100%; height:340px;">
			<ul class="sliders-wrap-inner">
				{foreach from=$contents item=content key=k}
					<li>
						{$content}						
					</li>
				{/foreach}                   
			  </ul>  	
		    </div>
			<div class="navigator-content">
			  <div class="button-next">Next</div>
			  <div class="navigator-wrapper">
				<ul class="navigator-wrap-inner">
					{foreach from=$thumb item=thumb_image key=k}
						<li>{$thumb_image}</li>					
					{/foreach}                          
				</ul>
			  </div>
			  <div  class="button-previous">Previous</div>
		     </div> 
		  <div class="button-control"><span></span></div>
	 {literal}
	<script type="text/javascript">
	
	$(document).ready( function(){     
	     // buttons for next and previous item     
	     var buttons = { previous:$('#jslidernews1 .button-previous'),
	     next:$('#jslidernews1 .button-next') };
	     $('#jslidernews1').lofJSidernews({
	       interval: 4000,  direction: 'opacitys',easing: 'easeInOutExpo',duration: 1200,auto: true,maxItemDisplay: 4,
	       navPosition     	: 'horizontal',navigatorHeight 	: 32,navigatorWidth : 50,mainWidth: 980,buttons: buttons
	     });
	});
	
	</script>{/literal}
	
	<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
	
{elseif $style eq '8'}
	<div id="jslidernews2" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
	<div class="preload"><div></div></div>
            <div  class="button-previous">Previous</div>                   
    		 <!-- MAIN CONTENT --> 
              <div class="main-slider-content" style="width:100%; height:340px;">
                <ul class="sliders-wrap-inner">
                       {foreach from=$contents item=content}
				<li>
					{$content}
				</li>
			{/foreach}          
                  </ul>  	
            </div>
           <!-- END MAIN CONTENT --> 
           
          <div class="button-next" style="right:0;">Next</div>
 		 <!-- BUTTON PLAY-STOP -->
          <div class="button-control"><span></span></div>
          <!-- END OF BUTTON PLAY-STOP -->
{literal}
<script>
	
	$(document).ready( function(){	
		var buttons = { previous:$('#jslidernews2 .button-previous') ,	next:$('#jslidernews2 .button-next') };			 
		$('#jslidernews2').lofJSidernews( { interval:5000, easing:'easeInOutQuad', duration:1200, auto:true,
		mainWidth:980, mainHeight:340, navigatorHeight: 100,navigatorWidth : 310, maxItemDisplay:3,
		buttons:buttons } );						
	});
	
</script>{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
{elseif $style eq '9'}
<div style="background-color:#fff; width:100%; float:left; margin-bottom:8px;">
 <div class="block_content blockstore">
            {foreach from=$left_menu item=leftmenu name=myLoop}
            	<div class="egrnewslist">
                	<div class="egrnews_img">
			    <a href="#" class="tooltip">
			    
				<img src="{$module_dir}../egrleftmenu/images/{$leftmenu.menu_icon}" width="50" height="50" />
				<p>{$leftmenu.menu_title}</p>
				<span>
					<img class="callout" src="{$img_dir}/callout.gif" />
					<strong>{$leftmenu.menu_title}</strong><br />
					{$leftmenu.menu_link}.
				</span>
			    </a>
			</div>
            
		</div>
         {/foreach}
        </div>
        
	<div id="jslidernews3" class="lof-slidecontent" style="width:750px; height:299px; float:right; margin-top:1px; background-color:#fff; padding:5px;">
    
		<div class="preload"><div></div></div>
		    
		    <div  class="button-previous">Previous</div>
			   
		<!-- MAIN CONTENT -->
		<div class="main-slider-content" style="width:750px; height:300px;">
			<ul class="sliders-wrap-inner">
				
				{foreach from=$contents item=content key=k}
				
					<li>
						<a href="{$urlArr.$k}">{$content}</a>
						{if $urlArr1.$k!=''}
							<a class="btn-sty1" href="{$urlArr.$k}">Voir les téléphone</a>
						{/if}
						{if $urlArr2.$k!=''}
							<a class="btn-sty2" href="{$urlArr1.$k}">Voir les Forfaits</a>
						{/if}
					</li>
					
				{/foreach} 
			   
			</ul>  	
		</div>
		<!-- END MAIN CONTENT --> 
	       <div class="button-next">Next</div>
	    {literal}
	    <script type="text/javascript">
		
		$(document).ready( function(){	
			var buttons = {
				previous:$('#jslidernews3 .button-previous') ,
				next:$('#jslidernews3 .button-next')
			};
			var _complete = function(slider, index){ 
				$('#jslidernews3 .slider-description').animate({
					height:0
				});
				slider.find(".slider-description").animate({
					height:100
				}); 
			};
			$('#jslidernews3').lofJSidernews({
				interval : 4000,direction: 'opacity',easing: 'easeOutBounce',duration: 1200,
				auto: true,mainWidth: 980,buttons: buttons,onComplete:_complete
			});
		});
		
	   </script>{/literal}
       </div>
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->	    

{elseif $style eq '10'} 
<!------------------------------------- THE CONTENT ------------------------------------------------->
<div id="jslidernews2" class="lof-slidecontent" style="width:100%; height:340px; float:left; margin-bottom:10px;">
	<div class="preload"><div></div></div>
            <div  class="button-previous">Previous</div>                   
    		 <!-- MAIN CONTENT --> 
              <div class="main-slider-content" style="width:100%; height:340px;">
                <ul class="sliders-wrap-inner">
                       {foreach from=$contents item=content}
				<li>
					{$content}
				</li>
			{/foreach}          
                  </ul>  	
            </div>
           <!-- END MAIN CONTENT --> 
           <!-- NAVIGATOR -->
           	<div class="navigator-content">
                    <div class="navigator-wrapper">
                        <ul class="navigator-wrap-inner">
				{foreach from=$thumb item=thumb_image key=k}
					<li>
						<div style="float:left; padding-right:2px; width:215px; line-height:1.5;">
						{$thumb_image}
						<h3>  {$heading.$k|truncate:20:' ..'}</h3> 
						<!--<span>{$description.$k|strip_tags:true|truncate:60}</span>-->
                        <span>{$description.$k}</span>
						</div>
					</li>					
				{/foreach}    		
                        </ul>
                    </div>
                </div>
          <!----------------- END OF NAVIGATOR --------------------->
          <div class="button-next">Next</div>
 		 <!-- BUTTON PLAY-STOP -->
          <div class="button-control"><span></span></div>
          <!-- END OF BUTTON PLAY-STOP -->
{literal}
<script>
	
	$(document).ready( function(){	
		var buttons = { previous:$('#jslidernews2 .button-previous') ,	next:$('#jslidernews2 .button-next') };			 
		$('#jslidernews2').lofJSidernews( { interval:5000, easing:'easeInOutQuad', duration:1200, auto:true,
		mainWidth:980, mainHeight:300, navigatorHeight: 85,navigatorWidth : 310, maxItemDisplay:4,
		buttons:buttons } );						
	});
	
</script>{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->

{elseif $style eq '11'}
	<div id="wrapper" style="width:100%; float:left; height:380px; margin-bottom:10px;">			
	    <div class="splash" id="slider_demo_1" style="position:static; height:340px;">
		    
		    <div class="splash-content">
					
				</div>
				<div class="splash-controls">&nbsp;</div>
		    
		    <!--<table width="100%">
			    <tr>
				    <td width="75%">
					    <div class="splash-content" style="float:left;" ></div>
				    </td>
				    <td valign='middle' height='50' width="25%" >
					    <div class="splash-controls">&nbsp;</div>
				    </td>
			    </tr>
		    </table>-->
	    </div>
	    <input type='hidden' value='{$module_dir}slider_1.xml' name='xmlPage' id='xmlPage' />
	
{literal}	<script>
	
		    jQuery(document).ready(function($)
		    {
			    AwesomeSlider({
				htmlIdentifier: '#slider_demo_1',
				xmlSource: $('#xmlPage').val(),
				continuous: true,
				timer: 10000,
				hasFading: true,
				hasHeightToggleing: false,
				hasWidthToggleing: false,
				fading: 1000
			});
		    });
	
	</script>{/literal}
	<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
{elseif $style eq '12'}
	<div id="wrapper" style="width:100%; float:left; height:340px; margin-bottom:10px;">			
	    <div class="splash" id="slider_demo_1" style="width:100%;position:static;">
		    
		    <div class="splash-content">
					
				</div>
			<div class="splash-controls">&nbsp;</div>
		    
		   
	    </div>
	    <input type='hidden' value='{$module_dir}slider_1.xml' name='xmlPage' id='xmlPage' />
		
	{literal}<script>
	
		    jQuery(document).ready(function($)
		    {
			    AwesomeSlider({
				htmlIdentifier: '#slider_demo_1',
				xmlSource: $('#xmlPage').val(),
				continuous: true,
				timer: 10000,
				hasFading: true,
				hasHeightToggleing: false,
				hasWidthToggleing: false,
				fading: 200
			});
		    });
		
	</script>{/literal}
	<!------------------------------------- END OF THE CONTENT ------------------------------------------------->
{elseif $style eq '13'}
	<div id="wrapper" style="width:100%; float:left; height:340px; margin-bottom:10px;">			
	    <div class="splash" id="slider_demo_1" style="position:static; width:100%">
			<div class="splash-content" style="height:340px;"></div>
			<div class="splash-controls">&nbsp;</div>
	    </div>
	    <input type='hidden' value='{$module_dir}slider_1.xml' name='xmlPage' id='xmlPage' />
		
	{literal}<script>
	
		    jQuery(document).ready(function($)
		    {
			    AwesomeSlider({
				htmlIdentifier: '#slider_demo_1',
				xmlSource: $('#xmlPage').val(),
				continuous: true,
				timer: 10000,
				hasFading: true,
				hasHeightToggleing: false,
				hasWidthToggleing: false,
				fading: 200
			});
		    });
		
	</script>{/literal}
<!------------------------------------- END OF THE CONTENT ------------------------------------------------->	
{/if}

{/if}