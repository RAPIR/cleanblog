CREATE TABLE authors
(
  author_id   INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(255)             NOT NULL
);
CREATE TABLE posts
(
  post_id          INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  author_id        INT UNSIGNED             NOT NULL,
  post_title       VARCHAR(255)             NOT NULL,
  post_description VARCHAR(255),
  post_text        LONGTEXT,
  post_created     DATETIME                          DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (author_id) REFERENCES authors (author_id)
);

-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2015 at 05:14 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cleanblog`
--

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
  (1, 'keegi kes teab'),
  (2, 'kelle nime me ei nimeta');

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
  (1, 1, 'Mees peab avastama..', 'See on description', 'eI oska mingisugust teksti v‰lja mıelda siia',
   '2014-07-10 11:39:15'),
  (2, 2, 'See on Katuselt tiitel', 'Katuselt seletamas', 'H‰‰‰‰‰‰‰‰sti pikk tekst', '2015-10-09 11:44:10');

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
