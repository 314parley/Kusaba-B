-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2011 at 07:49 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

--
-- This is for Kusaba B 
--  let's use the original Kusaba X database installation script to make life easier...
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kub`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` smallint(1) unsigned NOT NULL,
  `position` varchar(3) NOT NULL,
  `disp` tinyint(1) NOT NULL,
  `boards` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` VALUES(1, 'top', 0, '', 'Right Frame Top');
INSERT INTO `ads` VALUES(2, 'bot', 0, '', 'Right Frame Bottom');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `postedat` int(20) NOT NULL,
  `postedby` varchar(75) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `announcements`
--


-- --------------------------------------------------------

--
-- Table structure for table `banlist`
--

CREATE TABLE `banlist` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `allowread` tinyint(1) NOT NULL DEFAULT '1',
  `ip` varchar(50) NOT NULL,
  `ipmd5` char(32) NOT NULL,
  `globalban` tinyint(1) NOT NULL DEFAULT '0',
  `boards` varchar(255) NOT NULL,
  `by` varchar(75) NOT NULL,
  `at` int(20) NOT NULL,
  `until` int(20) NOT NULL,
  `reason` text NOT NULL,
  `staffnote` text NOT NULL,
  `appeal` text,
  `appealat` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `banlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `bannedhashes`
--

CREATE TABLE `bannedhashes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `md5` varchar(255) NOT NULL,
  `bantime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bannedhashes`
--


-- --------------------------------------------------------

--
-- Table structure for table `ban_requests`
--

CREATE TABLE `ban_requests` (
  `id` int(11) NOT NULL,
  `janitor` smallint(6) NOT NULL,
  `post` int(11) NOT NULL,
  `reason` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `moderator` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ban_requests`
--


-- --------------------------------------------------------

--
-- Table structure for table `blotter`
--

CREATE TABLE `blotter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `important` tinyint(1) NOT NULL,
  `at` int(20) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blotter`
--


-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(5) NOT NULL DEFAULT '0',
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `start` int(10) unsigned NOT NULL,
  `uploadtype` tinyint(1) NOT NULL DEFAULT '0',
  `desc` varchar(75) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section` tinyint(2) NOT NULL DEFAULT '0',
  `maximagesize` int(20) NOT NULL DEFAULT '1024000',
  `maxpages` int(20) NOT NULL DEFAULT '11',
  `maxage` int(20) NOT NULL DEFAULT '0',
  `markpage` tinyint(4) NOT NULL DEFAULT '9',
  `maxreplies` int(5) NOT NULL DEFAULT '200',
  `messagelength` int(10) NOT NULL DEFAULT '8192',
  `createdon` int(20) NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `includeheader` text COLLATE utf8_unicode_ci NOT NULL,
  `redirecttothread` tinyint(1) NOT NULL DEFAULT '0',
  `anonymous` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Anonymous',
  `forcedanon` tinyint(1) NOT NULL DEFAULT '0',
  `embeds_allowed` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `trial` tinyint(1) NOT NULL DEFAULT '0',
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `defaultstyle` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `locale` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `showid` tinyint(1) NOT NULL DEFAULT '0',
  `compactlist` tinyint(1) NOT NULL DEFAULT '0',
  `enablereporting` tinyint(1) NOT NULL DEFAULT '1',
  `enablecaptcha` tinyint(1) NOT NULL DEFAULT '0',
  `enablenofile` tinyint(1) NOT NULL DEFAULT '0',
  `enablearchiving` tinyint(1) NOT NULL DEFAULT '0',
  `enablecatalog` tinyint(1) NOT NULL DEFAULT '1',
  `loadbalanceurl` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loadbalancepassword` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `boards`
--


-- --------------------------------------------------------

--
-- Table structure for table `board_filetypes`
--

CREATE TABLE `board_filetypes` (
  `boardid` tinyint(5) NOT NULL DEFAULT '0',
  `typeid` mediumint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `board_filetypes`
--


-- --------------------------------------------------------

--
-- Table structure for table `embeds`
--

CREATE TABLE `embeds` (
  `id` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `filetype` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `videourl` varchar(510) NOT NULL,
  `width` tinyint(3) unsigned NOT NULL,
  `height` tinyint(3) unsigned NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `embeds`
--

INSERT INTO `embeds` VALUES(1, 'you', 'Youtube', 'http://www.youtube.com/watch?v=', 200, 164, '<object type="application/x-shockwave-flash" width="SET_WIDTH" height="SET_HEIGHT" data="http://www.youtube.com/v/EMBED_ID"> <param name="movie" value="http://www.youtube.com/v/EMBED_ID" /> </object>');
INSERT INTO `embeds` VALUES(2, 'goo', 'Google', 'http://video.google.com/videoplay?docid=', 200, 164, '<embed width="SET_WIDTH" height="SET_HEIGHT" id="VideoPlayback" type="application/x-shockwave-flash" src="http://video.google.com/googleplayer.swf?docId=EMBED_ID"></embed>');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `name` varchar(255) NOT NULL,
  `at` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES('pingback', 0);
INSERT INTO `events` VALUES('sitemap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `filetype` varchar(255) NOT NULL,
  `mime` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_w` int(7) NOT NULL DEFAULT '0',
  `image_h` int(7) NOT NULL DEFAULT '0',
  `force_thumb` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` VALUES(1, 'jpg', '', '', 0, 0, 0);
INSERT INTO `filetypes` VALUES(2, 'gif', '', '', 0, 0, 0);
INSERT INTO `filetypes` VALUES(3, 'png', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `front`
--

CREATE TABLE `front` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `page` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `poster` varchar(75) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `front`
--


-- --------------------------------------------------------

--
-- Table structure for table `loginattempts`
--

CREATE TABLE `loginattempts` (
  `username` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `timestamp` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginattempts`
--


-- --------------------------------------------------------

--
-- Table structure for table `modlog`
--

CREATE TABLE `modlog` (
  `entry` text NOT NULL,
  `user` varchar(255) NOT NULL,
  `category` tinyint(2) NOT NULL DEFAULT '0',
  `timestamp` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modlog`
--


-- --------------------------------------------------------

--
-- Table structure for table `module_settings`
--

CREATE TABLE `module_settings` (
  `module` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'string'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `boardid` smallint(5) unsigned NOT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `tripcode` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `file` varchar(50) NOT NULL,
  `file_md5` char(32) NOT NULL,
  `file_type` varchar(20) NOT NULL,
  `file_original` varchar(255) NOT NULL,
  `file_size` int(20) NOT NULL DEFAULT '0',
  `file_size_formatted` varchar(75) NOT NULL,
  `image_w` smallint(5) NOT NULL DEFAULT '0',
  `image_h` smallint(5) NOT NULL DEFAULT '0',
  `thumb_w` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb_h` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(75) NOT NULL,
  `ipmd5` char(32) NOT NULL,
  `tag` varchar(5) NOT NULL,
  `timestamp` int(20) unsigned NOT NULL,
  `stickied` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `posterauthority` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_timestamp` int(20) NOT NULL DEFAULT '0',
  `IS_DELETED` tinyint(1) NOT NULL DEFAULT '0',
  `bumped` int(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`boardid`,`id`),
  KEY `parentid` (`parentid`),
  KEY `bumped` (`bumped`),
  KEY `file_md5` (`file_md5`),
  KEY `stickied` (`stickied`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cleared` tinyint(1) NOT NULL DEFAULT '0',
  `board` varchar(255) NOT NULL,
  `postid` int(20) NOT NULL,
  `when` int(20) NOT NULL,
  `ip` varchar(75) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '0',
  `abbreviation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sections`
--


-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(3) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `boards` text,
  `addedon` int(20) NOT NULL,
  `lastactive` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `staff`
--


-- --------------------------------------------------------

--
-- Table structure for table `watchedthreads`
--

CREATE TABLE `watchedthreads` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `threadid` int(20) NOT NULL,
  `board` varchar(255) NOT NULL,
  `ip` char(15) NOT NULL,
  `lastsawreplyid` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `watchedthreads`
--


-- --------------------------------------------------------

--
-- Table structure for table `wordfilter`
--

CREATE TABLE `wordfilter` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(75) NOT NULL,
  `replacedby` varchar(75) NOT NULL,
  `boards` text NOT NULL,
  `time` int(20) NOT NULL,
  `regex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wordfilter`
--

