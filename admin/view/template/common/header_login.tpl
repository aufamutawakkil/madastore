<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<script src="view/javascript/gridstack/bower_components/jquery/dist/jquery.js"></script>
<script src="view/javascript/gridstack/bower_components/jquery-ui/jquery-ui.js"></script>
<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>
<link href="view/stylesheet/bootstrap.css" type="text/css" rel="stylesheet" />
<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />

<!-- favicon -->
<link rel="apple-touch-icon" sizes="57x57" href="<?=$base?>view/image/favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="<?=$base?>view/image/favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?=$base?>view/image/favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="<?=$base?>view/image/favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?=$base?>view/image/favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="<?=$base?>view/image/favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="<?=$base?>view/image/favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="<?=$base?>view/image/favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="<?=$base?>view/image/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="<?=$base?>view/image/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?=$base?>view/image/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="<?=$base?>view/image/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?=$base?>view/image/favicon/favicon-16x16.png">
<link rel="manifest" href="<?=$base?>view/image/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="<?=$base?>view/image/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<link rel="stylesheet" href="view/javascript/gridstack/dist/gridstack.css"/>
<script src="view/javascript/gridstack/bower_components/lodash/lodash.js"></script>
<script src="view/javascript/gridstack/dist/gridstack.js"></script>

<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="screen" />
<?php foreach ($styles as $style) { ?>
<link type="text/css" href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
</head>
<body>
<div id="container"> 