{if $page_name !='category'}
<link rel="stylesheet" type="text/css" href="{$this_path}testimonial.css" media="screen" />
{if $teste_scrolling==1}
      <div class="block" >
 	 <h4>{l s='Testimonials' mod='testimonial'}kjdshbgfj</h4>
            <div class="block_content test-monial_scroll">
	       {if $test_titles}
		  <marquee behavior="scroll"  scrollamount ="2"
			   direction="up" onmouseover="this.stop();"
			   onmouseout="this.start();">
              
		     {foreach from=$test_titles item=testmonial name=test_title}
              <div class="sss clearfix">
			<img src="{$base_dir}modules/testimonial/images/{$testmonial.teste_image}"/>
          <span>{$testmonial.teste_name}</span>
		     <div>
			{$testmonial.teste_text|truncate:100}
		     </div>
              </div>
		     {/foreach}
            
	          </marquee>
		  {if $this_version == '1.5'}
		  <a href="index.php?fc=module&module=testimonial&controller=testi_list">{l s='Know more..' mod='testimonial'} </a>
		  {else if $this_version == '1.4'}
		  <a href="{$this_path}testi_list.php">{l s='Know more..' mod='testimonial'} </a>
		  {/if}
	       {else} {l s='No Testimonial..' mod='testimonial'}
	       {/if}
	    </div>
      </div>
   {/if}
       
   {if $teste_scrolling==2}
      <div class="block">
	 <h4>{l s='Testimonial' mod='testimonial'}</h4>
	    <div class="block_content test-monial" style="padding:0 10px; overflow-x:auto;">
	      {if $test_titles}
		  {assign var="x" value=0}
		  {foreach from=$test_titles item=testmonial name=test_title}
		  <img src="{$base_dir}modules/testimonial/images/{$testmonial.teste_image}"/>
          <span>{$testmonial.teste_name}</span>
		     <div>
			{$testmonial.teste_text|truncate:100}
		     </div>
		     {assign var="x" value=$x+1}
		     {if $number == $x}
			{break}
		     {/if}
		  {/foreach}
	       {if $this_version == '1.5'}
	       <a href="index.php?fc=module&module=testimonial&controller=testi_list">{l s='Know more..' mod='testimonial'} </a>
	       {else if $this_version == '1.4'}
	       <a href="{$this_path}testi_list.php">{l s='Know more..' mod='testimonial'} </a>
	       {/if}
		  {else} {l s='No Testimonial..' mod='testimonial'}
	       {/if}
	   </div>
      </div>
   {/if}
 {/if}
