/*
SQLyog Ultimate v8.4 
MySQL - 5.5.9 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `music`;

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `year` int(11) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `desc` text CHARACTER SET latin1,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `album` */

/*Table structure for table `album_artist` */

DROP TABLE IF EXISTS `album_artist`;

CREATE TABLE `album_artist` (
  `album_id` int(11) unsigned NOT NULL,
  `artist_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`album_id`,`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `album_artist` */

/*Table structure for table `album_song` */

DROP TABLE IF EXISTS `album_song`;

CREATE TABLE `album_song` (
  `album_id` int(11) unsigned NOT NULL,
  `song_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`album_id`,`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `album_song` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `realname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `isauthor` tinyint(4) NOT NULL DEFAULT '0',
  `avatar` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `about` text CHARACTER SET latin1,
  `company` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `person` */

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `src` varchar(255) CHARACTER SET latin1 NOT NULL,
  `desc` text CHARACTER SET latin1,
  `lyric` text CHARACTER SET latin1,
  `image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `song` */

/*Table structure for table `song_artist` */

DROP TABLE IF EXISTS `song_artist`;

CREATE TABLE `song_artist` (
  `song_id` int(11) unsigned NOT NULL,
  `artist_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`song_id`,`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `song_artist` */

/*Table structure for table `song_author` */

DROP TABLE IF EXISTS `song_author`;

CREATE TABLE `song_author` (
  `song_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`song_id`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `song_author` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;