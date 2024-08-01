<?php
include("../connection.php");
if(isset($_POST['submit'])){

    $name = mysqli_real_escape_string($con,$_POST['name']);
    $mobile = mysqli_real_escape_string($con,$_POST['mobile']);
    $checkbox1=$_POST['wastetype'];  
    $chk="";  
      foreach($checkbox1 as $chk1)  
             {  
                 $chk .= $chk1.",";  
             } 

    $email = mysqli_real_escape_string($con,$_POST['email']);
	$status = mysqli_real_escape_string($con,$_POST['status']);
    $location = mysqli_real_escape_string($con,$_POST['location']);    
    $locationdescription = mysqli_real_escape_string($con,$_POST['locationdescription']);
	$date = $_POST['date'];
	
	$file = $_FILES['file']['name'];
	$target_dir = "upload/";
	$target_file = $target_dir . basename($_FILES["file"]["name"]);
  
	// Select file type
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  
	// Valid file extensions
	$extensions_arr = array("jpg","jpeg","png","gif","tif", "tiff");
  
	//validate file size 
  //   $filesize = $_FILES["file"]["size"] < 5 * 1024 ;
  
	// Check extension
	if( in_array($imageFileType,$extensions_arr) ){
   
	
	   // Upload file
	   move_uploaded_file($image = $_FILES['file']['tmp_name'],$target_dir.$file);
  
	}

		$sql = "insert into garbageinfo(name,mobile,email,wastetype,location,locationdescription,file,date,status,Vender_Id)values('$name','$mobile','$email','$chk','$location','$locationdescription','$file','$date','$status',1022)";
		
		// echo $result;
		// echo "Returned rows are: " . mysqli_num_rows($result);
    	if(mysqli_query($con,$sql)){
			echo "Data inserted...";
            header('Location: http://localhost/pbl/waste.php');
			// $msg = '<div class = "alert alert-success"><span class="fa fa-check"> "Compain Registered Successfully!"</span><a href="http://localhost/pbl/adminlogin/welcome.php"> view Complain </a></div>';
		
		}else {
			echo "Data inserted...!!!";
			// $msg= '<div class = "alert alert-warning"><span class="fa fa-times"> Failed to Registered !"</span></div>';
		}

    }
?>