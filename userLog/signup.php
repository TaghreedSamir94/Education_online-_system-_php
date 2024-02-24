<?php
include('../admin/db.php');
session_start();
// $msg= "";
$date = date("Y-m-d");
if(isset($_POST['signup'])){
    $full_name = $_POST['fullname'];
    $name = $_POST['username'];
    $email = $_POST['email'];
    $pass =  password_hash($_POST['password'], PASSWORD_DEFAULT);
    $type = $_POST["type"];
    if(!empty($full_name) && !empty($name) && !empty($email) && !empty($pass) && !empty($type)){
        $sql = "INSERT INTO `users`(`date`, `user_name`, `full_name`, `email`, `password`, `users_type`) 
        VALUES ('$date','$name','$full_name','$email','$pass','$type')";
        $stat=$dsn->prepare($sql);
        $stat->execute();

        $_SESSION['success'] = "Registration completed successfully";

    }
}
// header("Location:../index.php");
header("refresh:3;url=../index.php");


?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Register completed</title>

    <!-- Bootstrap -->
    <link href="../admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../admin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../admin/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../admin/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
         <section class="login_content">
            <?php if(isset($_SESSION['success'])):?>
                <div class="alert alert-success text-center"><?php echo $_SESSION['success'];?></div>
                <?php unset($_SESSION['success'] );?>
            <?php endif;?>
            <form>
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" name="fullname" placeholder="Fullname" required="" />
              </div>
              <div>
                <input type="text" class="form-control" name="username" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" name="email" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
              </div>
              <div>
               <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="type"  value="Instructor">
                <label class="form-check-label" for="type">Instructor</label>
               </div>
               <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="type"  value="Student">
                <label class="form-check-label" for="type">Student</label>
               </div>
              </div>
              <div>
                <button name="signup" class="btn btn-default submit">Submit</button>
                <!-- <a class="btn btn-default submit" href="index.php">Submit</a> -->
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Education Meetings</h1>
                  <p>©2016 All Rights Reserved. Education Meetings is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
         </section>
        </div>
     </div>
   </div>  
                   
</body>
</html>
    
