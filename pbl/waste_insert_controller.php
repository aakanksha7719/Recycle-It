<?php
include("connection.php");
$id = $_GET['id'];
echo "Id is: $id";
$query = "UPDATE garbageinfo SET Vender_Id=$id WHERE Vender_Id=1022";
if(mysqli_query($con,$query)){
    echo "Data updated...";
    header('Location: user_index.html');

}else {
    echo "Data inserted...!!!";
    $msg= '<div class = "alert alert-warning"><span class="fa fa-times"> Failed to Registered !"</span></div>';
}

?>