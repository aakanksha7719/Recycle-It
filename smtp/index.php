<?php

include('smtp/smtp/PHPMailerAutoload.php');

session_start();
require "connection.php";
 $name = mysqli_real_escape_string($con, $_POST['name']);
 $sndemail = mysqli_real_escape_string($con, $_POST['email']);
	
	

$html='Msg';
echo smtp_mailer($sndemail,'Recycle - It',$html);
function smtp_mailer($to,$subject, $msg){
	$mail = new PHPMailer(); 
	$mail->SMTPDebug  = 3;
	$mail->IsSMTP(); 
	$mail->SMTPAuth = true; 
	$mail->SMTPSecure = 'tls'; 
	$mail->Host = "smtp.gmail.com";
	$mail->Port = 587; 
	$mail->IsHTML(true);
	$mail->CharSet = 'UTF-8';
	$mail->Username = "akanshakhedkar@gmail.com";
	$mail->Password = "Khedkar@7719";
	$mail->SetFrom("akanshakhedkar@gmail.com");
	$mail->Subject = $subject;
	$mail->Body =$msg;
	$mail->AddAddress($to);
	$mail->SMTPOptions=array('ssl'=>array(
		'verify_peer'=>false,
		'verify_peer_name'=>false,
		'allow_self_signed'=>false
	));
	if(!$mail->Send()){
		echo $mail->ErrorInfo;
	}else{
		return 'Sent';
	}
}
?>