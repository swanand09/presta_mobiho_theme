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
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"><![endif]-->
<html lang="{$lang_iso}">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
{/if}
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" /> 
		<meta name="apple-mobile-web-app-capable" content="yes" /> 
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
		<link rel="stylesheet" href="{$css_uri}" type="text/css" media="{$media}" />
	{/foreach}
{/if}
		{$HOOK_HEADER}
		<link rel="stylesheet" href="http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Open+Sans:300,600" type="text/css" media="all" />
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
		<script type="text/javascript" src="{$js_dir}plugins/hoverIntent.js"></script>
		<script type="text/javascript" src="{$js_dir}plugins/icheck.min.js"></script>
		<script type="text/javascript" src="{$js_dir}plugins/superfish.js"></script>
	</head>
	<body class='home' {if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} >
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
			</div>
		{/if}
                 <!--Before header-->
                <div class="row size-text">
                  <div class="container">
                      {hook h="displayNav"}
                  </div>
                </div>

                <!--Logo, searchbox, numéro de téléphone -->
                <div class="row header">
                    <div class="container">
                      <div class="col-md-4">
                          <a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
                            <img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if $logo_image_width} width="{$logo_image_width}"{/if}{if $logo_image_height} height="{$logo_image_height}"{/if}/>
                           </a>
                      </div>
                      {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
                        
                     <!--After menu -->

                     <div class="row after-menu">
                       <div class="container">
                         <div class="col-md-4 garantie">Garantie 1 an</div>
                         <div class="col-md-4 telephone-debloque"> Téléphones Débloqués</div>
                         <div class="col-md-4 telephone-stock">Téléphones en stock</div>
                         <div class="col-md-4 expedition">Expédition sous 48h</div>
                       </div>
                     </div>
                
		{*<div id="page">
			<div class="header-container">
				<header id="header">
					<div class="banner">
						<div class="container">
							<div class="row">
								{hook h="displayBanner"}
							</div>
						</div>
					</div>
					<div class="nav">
						<div class="container">
							<div class="row">
								<nav>{hook h="displayNav"}</nav>
							</div>
						</div>
					</div>
					<div>
						<div class="container">
							<div class="row">
								<div id="header_logo">
									<a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
										<img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if $logo_image_width} width="{$logo_image_width}"{/if}{if $logo_image_height} height="{$logo_image_height}"{/if}/>
									</a>
								</div>
								{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
							</div>
						</div>
					</div>
				</header>
			</div>*}
                        {if $page_name !='index' && $page_name !='pagenotfound'}                         
			  <div class="row" id="main-container">
                                <div class="container">
					{include file="$tpl_dir./breadcrumb.tpl"}
                                </div>        
                                {if $page_name =='category'}
                                 <div class="outer-container drop-box-shadow">
                                    <div class="container">
                                      <div class="row">  
                                          <div class="col-md-5 filter drop-box-shadow ">
                                              {if isset($left_column_size) && !empty($left_column_size)}
                                              {$HOOK_LEFT_COLUMN}
                                              {/if}
                                          </div>
                                      </div>     
                                    </div>
                                 </div>  
                                {/if}   
                          </div>
                        {/if}
					
	{/if}