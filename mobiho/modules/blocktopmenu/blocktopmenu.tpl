{if $MENU != ''}
	<!-- Menu -->
        <!--Menu , panier -->
        <div class="row menu-panier">
          <div class="container">
            <div class="col-md-13">
              <ul class="nav navbar-nav">
                  {$MENU}
			{if $MENU_SEARCH}
				<li class="sf-search noBack" style="float:right">
					<form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
						<p>
							<input type="hidden" name="controller" value="search" />
							<input type="hidden" value="position" name="orderby"/>
							<input type="hidden" value="desc" name="orderway"/>
							<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}" />
						</p>
					</form>
				</li>
			{/if}
              </ul>
            </div>
            
	<!--/ Menu -->
{/if}