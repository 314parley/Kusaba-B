<?php
/**
 * Editing functions available to all users
 *
 * This file serves the purpose of providing functionality for all users
 * to edit their own posts or for moderators to edit any post.
 *
 * @package kusaba
 * @author stormeus
 */
 
// Start session
session_start();

// Get the basic functions/classes we'll need
require 'config.php';
require KU_ROOTDIR . 'inc/functions.php';
require KU_ROOTDIR . 'inc/classes/board-post.class.php';
require KU_ROOTDIR . 'inc/classes/posting.class.php';
require KU_ROOTDIR . 'inc/classes/parse.class.php';

// Are we even processing anything?
if(!empty($_GET['id']))
{
	
}
else
{
	// Some browsers just suck ass. That's why we have to do this twice.
	header('Location: ' . KU_WEBPATH);
	die('<script type="text/javascript">window.location = "' . KU_WEBPATH . '";</script>');
}
