<?php
	include('includes/PHPMailer/src/PHPMailer.php');
	include('includes/PHPMailer/src/Exception.php');
	include('includes/PHPMailer/src/SMTP.php');
	$sendEmail=false;
	$mail = new PHPMailer\PHPMailer\PHPMailer();
	$mail->SMTPDebug = 0;
	$mensaje="<strong>Nombre: </strong>".$_POST['name']."<br>"."<strong>Email: </strong>".$_POST['email']."<br>"."<strong>Teléfono: </strong>".$_POST['tlfo']."<br>".$_POST['message'];
	$asunto=$_POST['affair'];
	$mail->Host = 'localhost';
	$mail->Username = 'mail@mail.es';    
	$mail->SMTPSecure = 'tls';
	$mail->SMTPAutoTLS=true;                            
	$mail->Port = 587;                                    
	$mail->Subject = $asunto;
	$mail->Body    = $mensaje;
	$mail->isHTML(true);
	$mail->setFrom('mail@mail.es','Sergio Araque');
	$mail->addAddress('mail@mail.es');
	$mail->Send();
    header('Location: index.php');
	$sendEmail=true;
?>