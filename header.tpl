<!doctype html>

<!--[if lt IE 7]>
<html class="no-js ie6 oldie" lang="{Config::Get('i18n.lang')}" dir="{Config::Get('i18n.dir')}"> <![endif]-->
<!--[if IE 7]>
<html class="no-js ie7 oldie" lang="{Config::Get('i18n.lang')}" dir="{Config::Get('i18n.dir')}"> <![endif]-->
<!--[if IE 8]>
<html class="no-js ie8 oldie" lang="{Config::Get('i18n.lang')}" dir="{Config::Get('i18n.dir')}"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="{Config::Get('i18n.lang')}" dir="{Config::Get('i18n.dir')}"> <!--<![endif]-->

<head>
	{hook run='html_head_begin'}
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>{$sHtmlTitle}</title>
	
	<meta name="description" content="{$sHtmlDescription}">
	<meta name="keywords" content="{$sHtmlKeywords}">

	{$aHtmlHeadFiles.css}
	
	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
	
	<link href="{Config::Get('path.skin.assets.url')}images/favicon.ico" rel="shortcut icon"/>
    <link rel="search" type="application/opensearchdescription+xml" href="{router page='search'}opensearch/" title="{Config::Get('view.name')}"/>

	{if $aHtmlRssAlternate}
		<link rel="alternate" type="application/rss+xml" href="{$aHtmlRssAlternate.url}" title="{$aHtmlRssAlternate.title}">
	{/if}

	{if $sHtmlCanonical}
		<link rel="canonical" href="{$sHtmlCanonical}" />
	{/if}
	
	{if $bRefreshToHome}
		<meta  HTTP-EQUIV="Refresh" CONTENT="3; URL={Config::Get('path.root.url')}">
	{/if}
		
<script type="text/javascript">
        var DIR_WEB_ROOT        = '{Config::Get('path.root.url')}';
        var DIR_STATIC_SKIN     = '{Config::Get('path.static.skin')}';
        var DIR_ROOT_ENGINE_LIB = '{Config::Get('path.root.engine_lib')}';
        var LIVESTREET_SECURITY_KEY = '{$ALTO_SECURITY_KEY}';
        var SESSION_ID          = '{$_sPhpSessionId}';
        var WYSIWYG             = '{Config::Get('view.wysiwyg')}' ? true : false;
        var BLOG_USE_TINYMCE    = WYSIWYG;

        {if Config::Get('lang.current') == 'ru'}
        var TINYMCE_LANG = 'ru';
        {else}
        var TINYMCE_LANG = 'en';
        {/if}

        var aRouter = new Array();
        {foreach from=$aRouter key=sPage item=sPath}
        aRouter['{$sPage}'] = '{$sPath}';
        {/foreach}
    </script>
	
	{$aHtmlHeadFiles.js}
	
	 <script type="text/javascript">
        var tinyMCE = null;
        ls.lang.load({json var = $aLangJs});
        ls.registry.set('comment_max_tree', {json var=Config::Get('module.comment.max_tree')});
        ls.registry.set('block_stream_show_tip', {json var=Config::Get('block.stream.show_tip')});
    </script>

    {if {Config::Get('view.grid.type')} == 'fluid'}
        <style>
            #container {
                min-width: {Config::Get('view.grid.fluid_min_width')}px;
                max-width: {Config::Get('view.grid.fluid_max_width')}px;
            }
        </style>
    {else}
        <style>
            #container {
                width: {Config::Get('view.grid.fixed_width')}px;
            }
        </style>
    {/if}
	
{hook run='html_head_end'}
</head>

{if E::IsUser()}
	{assign var=body_classes value=$body_classes|cat:' ls-user-role-user'}
	
	{if E::IsAdmin()}
		{assign var=body_classes value=$body_classes|cat:' ls-user-role-admin'}
	{/if}
{else}
	{assign var=body_classes value=$body_classes|cat:' ls-user-role-guest'}
{/if}

{if !E::IsAdmin()}
	{assign var=body_classes value=$body_classes|cat:' ls-user-role-not-admin'}
{/if}

{* wgroup_add group='toolbar' widget='toolbar_admin.tpl' priority=100 *}
{* wgroup_add group='toolbar' widget='toolbar_scrollup.tpl' priority=-100 *}

<body class="{$body_classes} width-{Config::Get('view.grid.type')}">
	{hook run='body_begin'}
		
	{if $oUserCurrent}
		{include file='window_write.tpl'}
		{include file='window_favourite_form_tags.tpl'}
	{else}
		{include file='window_login.tpl'}
	{/if}
		
	{include file='header_top.tpl'}
	{include file='nav.tpl'}
	
	<section id="container {hook run='container_class'}">
		<div id="wrapper" class="container {hook run='wrapper_class'}">
			<div class="wrapper-inner">

				<div class="row-fluid">
					{if !$noSidebar && $sidebarPosition == 'left'}
						{include file='sidebar.tpl'}
					{/if} 
		
					<div role="main" 
						class="{if $noSidebar}span12{else}span8{/if} content{if $sidebarPosition == 'left'} content-right{/if}"
						{if $sMenuItemSelect=='profile'}itemscope itemtype="http://data-vocabulary.org/Person"{/if}>
				
						{include file='nav_content.tpl'}
						{include file='system_message.tpl'}
				
						{hook run='content_begin'}
