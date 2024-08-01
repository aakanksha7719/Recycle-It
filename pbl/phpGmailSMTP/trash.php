<?php 
require_once '../controllerUserData.php';
$email = $_SESSION['email'];
$password = $_SESSION['password'];
if($email != false && $password != false){
    $sql = "SELECT * FROM usertable WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        if($status == "verified"){
            if($code != 0){
                header('Location: ../reset-code.php');
            }
        }else{
            header('Location: ../user-otp.php');
        }
    }
}else{
    header('Location: ../login-user.php');
}?>
<?php

 require_once "../controllerUserData.php";
 
error_reporting(0);
include('database.inc');
$msg ="";


// if(isset($_POST['submit'])){

//     $name = mysqli_real_escape_string($con,$_POST['name']);
//     $mobile = mysqli_real_escape_string($con,$_POST['mobile']);
//     $checkbox1=$_POST['wastetype'];  
//     $chk="";  
//       foreach($checkbox1 as $chk1)  
//              {  
//                  $chk .= $chk1.",";  
//              } 

//     $email = mysqli_real_escape_string($con,$_POST['email']);
// 	$status = mysqli_real_escape_string($con,$_POST['status']);
//     $location = mysqli_real_escape_string($con,$_POST['location']);    
//     $locationdescription = mysqli_real_escape_string($con,$_POST['locationdescription']);
// 	$date = $_POST['date'];
	
// 	$file = $_FILES['file']['name'];
// 	$target_dir = "upload/";
// 	$target_file = $target_dir . basename($_FILES["file"]["name"]);
  
// 	// Select file type
// 	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  
// 	// Valid file extensions
// 	$extensions_arr = array("jpg","jpeg","png","gif","tif", "tiff");
  
// 	//validate file size 
//   //   $filesize = $_FILES["file"]["size"] < 5 * 1024 ;
  
// 	// Check extension
// 	if( in_array($imageFileType,$extensions_arr) ){
   
	
// 	   // Upload file
// 	   move_uploaded_file($image = $_FILES['file']['tmp_name'],$target_dir.$file);
  
// 	}

// 		$sql = "insert into garbageinfo(name,mobile,email,wastetype,location,locationdescription,file,date,status,Vender_Id)values('$name','$mobile','$email','$chk','$location','$locationdescription','$file','$date','$status',1022)";
		
// 		// echo $result;
// 		// echo "Returned rows are: " . mysqli_num_rows($result);
//     	if(mysqli_query($con,$sql)){
// 			echo "Data inserted...";
// 			$msg = '<div class = "alert alert-success"><span class="fa fa-check"> "Compain Registered Successfully!"</span><a href="http://localhost/pbl/adminlogin/welcome.php"> view Complain </a></div>';
		
// 		}else {
// 			echo "Data inserted...!!!";
// 			$msg= '<div class = "alert alert-warning"><span class="fa fa-times"> Failed to Registered !"</span></div>';
// 		}

	


//     //  $html = "<table><tr><td>FirstName: $name</td></tr><tr><td>Mobile: $mobile</td></tr><tr><td>Email: $email</td></tr><tr><td>Type Of Waste: $chk</td></tr><tr><td>Area: $location</td></tr><tr><td>Area description: $locationdescription</td></tr><tr><td>Images: $file  </td></tr><tr><td>Date: $date</td></tr></table>";
//     //  include('PHPMailerAutoload.php');
//     //  require_once('PHPMailerAutoload.php');
//     //  $mail = new PHPMailer(true);
//     //  $mail->isSMTP();
//     //  $mail->SMTPAuth = true;
//     //  $mail->SMTPSecure='tls';
//     //  $mail->Host='smtp.gmail.com';
//     //  $mail->Port= '587';
//     //  $mail->isHTML(true);
//     //  $mail->Username='suyogsabale007@gmail.com';
//     //  $mail->Password='Nemesis@007';
//     //  $mail->SetFrom('no-reply@howcode.org');     
//     //  $mail->Subject='Hello sir!';
//     //  $mail->Body=$html;     
//     //  $mail->AddAddress('francis@howcode.org');
//     //  $mail->SMTPOptions=array('ssl'=>array(
//     //      'verify_peer'=>false,
//     //      'verify_peer_name'=>false,
//     //      'allow_self_signed'=>false
//     //  ));
//     //  $mail->send();

//  }




?>

<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"type="text/css"href="style.css">
    <title>Complain</title>
  
</head>
<body>
	<div>
	<a href="http://localhost/pbl/index2.html"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-house-fill" viewBox="0 0 16 16">
  				<path fill-rule="evenodd" d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  				<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
			</svg>
            <span style="background: none;color: white;maergin-left: 20px;" >Home</span></a>
		<!-- <a href="http://localhost/pbl/index.html"  class="fa fa-fw fa-home"> Home </a> -->
		<!--<a href="http://localhost/EmailVerification/index.html"><i class="fa fa-fw fa-home"style="color: white;" ></i><mark style="background: none;color: white;" > Home</mark></a>-->
    </div>
   <?php 
   $error ='';   
   ?>
   <form method="post" action="trash_insert_controller.php" enctype="multipart/form-data">
   <!-- <form method="post" enctype="multipart/form-data"> -->
   <div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="contact-info">
				<img src="images.jfif" alt="image"/>
				<h2>Register Your Complain</h2>
				<h4>We would love to hear from you !</h4>
			</div>
		</div>
		<div class="col-md-9">
			<div class="contact-form">
				<div class="form-group">
				<div id="error"></div>
              <span style="color:red"><?php echo "<b>$msg</b>"?></span>
				  <label class="control-label col-sm-2" for="fname"> Name:</label>
				  <div class="col-sm-10">          
					<input type="text" class="form-control" id="name" placeholder="Enter Your Name" name="name" required>
				  </div>
				</div>
				<div class="form-group">
				  <label class="control-label col-sm-2" for="lname">Mobile:</label>
				  <div class="col-sm-10">          
					<input type="number" class="form-control" id="mobile" placeholder="Enter Your Mobile Number" name="mobile"required min ="1000000000" max="100000000000">
				  </div>
				</div>
				<div class="form-group">
				  <!-- <label class="control-label col-sm-2" for="email">Email:</label>
				  <div class="col-sm-10"> -->
					<input type="hidden" class="form-control" id="email" placeholder="Enter Your email" name="email" value="<?php echo   $_SESSION['email'];?>"> 
				  <!-- </div> -->
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="option">Category:</label>
					<div class="col-sm-10">          
					    <input type="checkbox" name="wastetype[]" value="organic"> Organic
                        <input type="checkbox" name="wastetype[]" value="inorganic"> Inorganic
                        <input type="checkbox" name="wastetype[]" value="Household"> Household
						<input type="checkbox" name="wastetype[]" value="agricultral"> agricultral
						<input type="checkbox" name="wastetype[]" value="hospital"> hospital
						<input type="checkbox" name="wastetype[]" value="E-Waste"> E-Waste
                        <input type="checkbox" name="wastetype[]" value="mixed"id="mycheck" checked> All
					</div>
				  </div>

				 <!-- <div class="form-group">
					<label class="control-label col-xs-2 ml-3 " for="option">Sub-Category:</label>
					<div class="col-sm-10">          
					    <input type="checkbox" name="wastetype[]" value="organic"> Organic
                        <input type="checkbox" name="wastetype[]" value="inorganic"> Inorganic
                        <input type="checkbox" name="wastetype[]" value="Household"> Household
                        <input type="checkbox" name="wastetype[]" value="mixed"id="mycheck" checked> All
					</div>
				  </div>-->


				  <div class="form-group">
					<label class="control-label col-sm-2" for="lname">Location:</label>
					<div class="col-sm-10">          
					   <select class="form-control" id="location" name="location"required>
						   <option class="form-control" >pune</option>
						   <option class="form-control" >pimpri-chinchwad</option>
						   <option class="form-control" >kothrud</option>
						   <option class="form-control" >lohegaon</option>
						   <option class="form-control" >kondhawa</option>
					   </select>
					</div>
				  </div>
				<div class="form-group">
				  
				  <div class="col-sm-10">
					<textarea class="form-control" rows="5" id="locationdescription" placeholder="Enter Location details..." name="locationdescription" required></textarea>
				  </div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="lname">Pictures:</label>
					<div class="col-sm-10">          
					  <input type="file" class="form-control" id="file" name="file"required accept="image/*" capture="camera">
					</div>
				  </div>
				<div class="form-group">        
				  <div class="col-sm-offset-2 col-sm-10">
				   <input type='hidden' class="form-control" id="date" name="status" value="Pending">
				    <input type="hidden" class="form-control" id="date" name="date" value="<?php $timezone = date_default_timezone_set("Asia/Kolkata");
                                                                                             echo  date("g:ia ,\n l jS F Y");?>">
					<button type="submit" class="btn btn-default" name="submit" >
						<!-- <a href="http://localhost/pbl/waste.php" class="btn btn-default"> -->
							Register
						<!-- </a> -->
					</button>
				  </div>
				</div>
			</div>
		</div>
	</div>
</div>
   </form>
</div>
<script type="text/javascript"  src="formValidation.js"></script>
</body>

</html>
