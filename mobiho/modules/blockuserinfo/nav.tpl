<!-- Block user information module NAV  -->
{if $is_logged}
	<div class="col-md-7 col-md-offset-9">
	      	<span class='icon-augmenter'>Augmenter la taille du texte</span>
	      	<span class="a1">A</span>
	      	<span class="a2">A</span>
	      	<span class="a3 border-right-1">A</span>
		<span>
                    <a href="{$link->getPageLink('myaccount', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" class="account" rel="nofollow"><span>{$cookie->customer_firstname} {$cookie->customer_lastname}</span></a>
                </span>    
                    
	</div>
{/if}
<div class="col-md-7 col-md-offset-9">
	      	<span class='icon-augmenter'>Augmenter la taille du texte</span>
	      	<span class="a1">A</span>
	      	<span class="a2">A</span>
	      	<span class="a3 border-right-1">A</span>
                <span>
	{if $is_logged}
		<a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
			{l s='Sign out' mod='blockuserinfo'}
		</a>
	{else}
		<a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Login to your customer account' mod='blockuserinfo'}">
			{l s='Sign in' mod='blockuserinfo'}
		</a>
	{/if}
                </span>
</div>
<!-- /Block usmodule NAV -->