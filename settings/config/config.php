<?php

$config = array();

// ћаксимальна€ вложенность комментов при отображении
$config['module']['comment']['max_tree'] = 5;

// ќграничение на вывод числа друзей пользовател€ на странице его профил€
$config['module']['user']['friend_on_profile'] = 18;

/* Theme */
$config['view']['theme'] = 'default';

/* Grid type:
 * 
 * fluid - резина
 * fixed - фиксированна€ ширина
 */
$config['view']['grid']['type'] = 'fixed';

/* Fluid settings */
$config['view']['grid']['fluid_min_width'] = 976; // Min - 976px
$config['view']['grid']['fluid_max_width'] = 1300;

/* Fixed settings */
$config['view']['grid']['fixed_width'] = 976;

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
	"___path.frontend.dir___/libs/js/vendor/markitup/skins/default/style.css",
    "___path.frontend.dir___/libs/js/vendor/markitup/sets/default/style.css",
    "___path.frontend.dir___/libs/js/vendor/jcrop/jquery.Jcrop.css",
    "___path.frontend.dir___/libs/js/vendor/prettify/prettify.css",
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
$config['module']['notify']['prefix']        = 'notify.';       // ѕрефикс шаблонов писем

$config['module']['user']['profile_photo_size'] = 250;          // размер фотопрофил€ по умолчанию
$config['module']['user']['profile_avatar_size'] = 80;          // размер аватара по умолчанию

return $config;
?>