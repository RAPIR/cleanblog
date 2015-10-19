<?php
/**
 * Created by PhpStorm.
 * User: Rajur
 * Date: 15-10-15
 * Time: 20:10
 */

//connect database
$db = mysqli_connect('127.0.0.1', 'root', '', 'cleanblog') or die(mysqli_error($db));
mysqli_query($db, "SET NAMES 'utf8 '");