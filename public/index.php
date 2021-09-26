<?php

use Leit040\itea_hw\Home;

require_once "../vendor/autoload.php";
$home = new Home();
echo $home->get('get',"http://ukr.net");
