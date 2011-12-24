<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head>
	<title>{$dwoo.const.KU_NAME} - {if $dwoo.get.p neq ''}FAQ{/if}{if $dwoo.get.p neq 'faq'}News{/if}</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<!--{for style $styles}
				<link rel="{if $styles[$style] neq $dwoo.const.KU_DEFAULTMENUSTYLE}alternate {/if}stylesheet" type="text/css" href="{$dwoo.const.KU_WEBFOLDER}css/site_{$styles[$style]}.css" title="{$styles[$style]|capitalize}" />
	{/for}-->
	<link rel="stylesheet" type="text/css" href="/css/yui.2.css" title="Index" />
	<link rel="stylesheet" type="text/css" href="/css/global.6.css" title="Index" />
	<link rel="stylesheet" type="text/css" href="/css/news.css" title="Index" />
<script type="text/javascript"><!--
	var style_cookie_site = "kustyle_site";
//--></script>
<link rel="shortcut icon" href="{$dwoo.const.KU_WEBFOLDER}favicon.ico" />
<script type="text/javascript" src="{%KU_WEBFOLDER}lib/javascript/gettext.js"></script>
<script type="text/javascript" src="{$dwoo.const.KU_WEBFOLDER}lib/javascript/kusaba.js"></script></head>
<body>
<div id="doc">
	<center><h1>{$dwoo.const.KU_NAME}</h1>
	{if $dwoo.const.KU_SLOGAN neq ''}<h3>{$dwoo.const.KU_SLOGAN}</h3>{/if}</center>
	<center>{$topads}</center>
<!--Begin work-->	
	<!--<div class="box-outer top-box" id="boards">
		<div class="box-inner">
		<div class="boxbar">
		<h2>Boards</h2>
		</div>
		<div class="boxcontent">
			{$menu}
	</div>
	</div>
	</div>-->
<!--End work for now-->
{foreach item=entry from=$entries}
	<div id="bd">
	<div class="box-outer top-box" >
	<div class="box-inner">
	<div class="boxbar">
	<h2>{if $dwoo.get.p neq 'faq'}News{/if}{if $dwoo.get.p neq ''}FAQ{/if}</h2>
	</div>
	<div class="boxcontent">
	<div class="content">
		<h3><span class="newssub">{$entry.subject|stripslashes}{if $dwoo.get.p eq ''} by {if $entry.email neq ''}<a href="mailto:{$entry.email|stripslashes}">{/if}{$entry.poster|stripslashes}{if $entry.email neq ''}</a>{/if} - {$entry.timestamp|date_format:"%D @ %I:%M %p %Z"}{/if}</span>
		<span class="permalink"><a href="#{$entry.id}">#</a></span></h3>
		{$entry.message|stripslashes}
	</div>
	</div>
	</div>
	</div><br />
{/foreach}	
		
		<br>
		<br>
		<center><div id="ft">
		{strip}<ul>
		<li class="fill" />
		<li class="fill" />
			<li class="{if $dwoo.get.p eq ''}current {else}tab {/if}first">{if $dwoo.get.p neq ''}<a href="{$ku_webpath}news.php">{/if}{t}News{/t}{if $dwoo.get.p neq ''}</a>{/if}</li>
			<li class="{if $dwoo.get.p eq 'faq'}current{else}tab{/if}">{if $dwoo.get.p neq 'faq'}<a href="{$ku_webpath}news.php?p=faq">{/if}{t}FAQ{/t}{if $dwoo.get.p neq 'faq'}</a>{/if}</li>
			<li class="{if $dwoo.get.p eq 'rules'}current{else}tab{/if}">{if $dwoo.get.p neq 'rules'}<a href="{$ku_webpath}news.php?p=rules">{/if}{t}Rules{/t}{if $dwoo.get.p neq 'rules'}</a>{/if}</li>
			<li class="fill" />
			<li class="fill" />
		</ul>{/strip}</center>
		<br />
	</div>
	<center>{$botads}</center>
</body>
</html>