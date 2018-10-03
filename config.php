<?php
	date_default_timezone_set("America/Sao_Paulo");
	define('BASE', 'http://prototypetwitter.esy.es');

	$pdo = new PDO('mysql:host=mysql.hostinger.com.br;dbname=u466994309_twitt', 'u466994309_admin','Admin00');
	$pdo->exec("set names utf8");
?>