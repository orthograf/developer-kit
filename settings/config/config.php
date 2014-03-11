<?php

$config = array();

/* Theme */
$config['view']['theme'] = 'default';

$config['head']['default']['js'] = Config::Get('assets.ls.head.default.js');
$config['head']['default']['js'][] = '___path.skin.dir___/js/template.js';

/* Bootstrap */
$config['head']['default']['js'][] = '___path.skin.dir___/bootstrap/js/bootstrap.min.js';

$config['head']['default']['css'] = array(
	/* Bootstrap */
	"___path.skin.dir___/bootstrap/css/bootstrap.min.css",
	"___path.skin.dir___/bootstrap/css/bootstrap-responsive.min.css",
	/* Font-Awesome */
	"___path.skin.dir___/font-awesome/css/font-awesome.min.css",

/* Structure */
	"___path.skin.dir___/css/base.css",
	"___path.frontend.dir___/libs/vendor/markitup/skins/default/style.css",
    "___path.frontend.dir___/libs/vendor/markitup/sets/default/style.css",
    "___path.frontend.dir___/libs/vendor/jcrop/jquery.Jcrop.css",
    "___path.frontend.dir___/libs/vendor/prettify/prettify.css",
	"___path.skin.dir___/css/grid.css",
	"___path.skin.dir___/css/common.css",
	"___path.skin.dir___/css/text.css",
	"___path.skin.dir___/css/forms.css",
	"___path.skin.dir___/css/navs.css",
	"___path.skin.dir___/css/icons.css",
	"___path.skin.dir___/css/tables.css",
	"___path.skin.dir___/css/topic.css",
	"___path.skin.dir___/css/comments.css",
	"___path.skin.dir___/css/blocks.css",
	"___path.skin.dir___/css/modals.css",
	"___path.skin.dir___/css/blog.css",
	"___path.skin.dir___/css/profile.css",
	"___path.skin.dir___/css/wall.css",
	"___path.skin.dir___/css/infobox.css",
	"___path.skin.dir___/css/jquery.notifier.css",
	"___path.skin.dir___/css/smoothness/jquery-ui.css",
	"___path.skin.dir___/css/responsive.css",
	
	/* Theme */
	"___path.skin.dir___/themes/___view.theme___/theme.css",

);

// Notifies/Emails
$config['module']['notify']['dir']           = '/notify/';
$config['module']['notify']['prefix']        = 'notify.';       // Префикс шаблонов писем

$config['module']['user']['profile_photo_size'] = 250;          // размер фотопрофиля по умолчанию
$config['module']['user']['profile_avatar_size'] = 80;          // размер аватара по умолчанию

return $config;
?>