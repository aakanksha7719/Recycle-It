<?php 
$db = new mysqli('localhost','root','','wms2');
if(!$db) {
    die('Please check Your database connection'.mysqli_error($db));
}

?>