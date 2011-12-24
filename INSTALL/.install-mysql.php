<?php
/**
 * @ignore
 */
################################################################################
# kusaba MySQL Importing Script v1.0 is © 2007 David Steven-Jennings (relixx@gmail.com)
#
# This work is licensed under the Creative Commons Attribution-ShareAlike 2.5 License.
# To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/2.5/
# or send a letter to Creative Commons, 543 Howard Street, 5th Floor, San Francisco,
# California, 94105, USA.
#
# You can modify this script as you wish just as long as this box stays intact. If
# you do modify this script please state that you have done so and give me credit
# as the author of the original script (with my email address intact).
################################################################################
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MySQL Batch File Importing Script</title>
<style type="text/css">
body { font-family: sans-serif; font-size: 75%; background: #ffe }
a { text-decoration: none; color: #550 }
h1,h2 { margin: 0px; background: #fca }
h1 { font-size: 150% }
h2 { font-size: 100%; margin-top: 1em }
.hl { font-style: italic }
.plus { float: right; font-size: 8px; font-weight: normal; padding: 1px 4px 2px 4px; margin: 0px 0px; background: #eb9; color: #000; border: 1px solid #da8; cursor: hand; cursor: pointer }
.plus:hover { background: #da8; border: 1px solid #c97 }
ul { list-style: none; padding-left: 0px; margin: 0px }
li { margin: 0px }
li:hover { background: #fec; }
li a { display: block; width: 100%; }
</style>
<link rel="shortcut icon" href="/favicon.ico" />
</head>

<body>
<div style="text-align:center;"><h1>MySQL Batch File Importing Script</h1></div>
<?php

if (!isset($_POST["confirm"])) {
?>
<br /><br />


<font color="#FF0000"><strong>WARNING!</strong></font><br /><br />
The purpose of this script is to quickly and easily run the commands contained within the kusaba SQL file, and is
to be used if you are installing the script for the first time or want to recreate the tables, for whatever reason.<br />
Running this script will delete any related tables and their data (including the admin files). I offer this script as-is and cannot be held
responsible for any damages caused or accidental loss of data incurred as a result of running this script.<br />
Before running this script, make sure that:<br />
<ul>
<li>-&gt; You have set up the database connection and that it is working</li>
<li>-&gt; You have created the database</li>
<li>-&gt; You have created the database user and set up the config file appropriately</li>
</ul>
<form action="install-mysql.php" method="post">
<br />
<input type="checkbox" name="confirm"> By clicking this check box I agree that the author of this script cannot be held responsible for my own stupidity if something goes wrong.<br /><br /><br />
<input type="submit" value="Import the MySQL batch file">
</form>

<?php
} else {
	require('../config.php');
	$tc_db->debug = true;
	$tc_db->Execute("CREATE TABLE PREFIX_ban_requests (
     		`id INTEGER PRIMARY KEY,
     		`janitor` smallint NOT NULL,
     		`post` int NOT NULL,
     		`reason` text NOT NULL,
     		`status` tinyint NOT NULL default '0',
     		`moderator` smallint NULL
		);
	");
}

?>
</body>
</html>
