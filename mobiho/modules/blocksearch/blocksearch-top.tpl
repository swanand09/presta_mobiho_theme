{*
* 2007-2014 PrestaShop
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
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!-- Block search module TOP -->

<div class="col-md-5 col-md-offset-1">
      	<form class="navbar-form" method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" role="search">
        <div class="input-group">            
            <input type="hidden" name="controller" value="search" />
            <input type="hidden" name="orderby" value="position" />
            <input type="hidden" name="orderway" value="desc" />
            <input class="form-control" type="text" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
            <div class="input-group-btn">
                <button class="btn btn-default" name="submit_search" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div> 
        </div>
        </form>
      </div>
      <div class="col-md-6 besoin-aide">
      	<p>Besoin D'aide ? <br><span class="numero">04-5800-5900</span></p>
      </div>
    </div>
  </div>
<!-- /Block search module TOP -->