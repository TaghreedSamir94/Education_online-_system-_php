<?php
session_start();
include('../db.php');
// $msg= "";
if(isset($_POST['signup'])){
    $full_name = $_POST['fullname'];
    $name = $_POST['admin_name'];
    $email = $_POST['email'];
    $pass =  password_hash($_POST['password'], PASSWORD_DEFAULT);
    if(!empty($full_name) && !empty($name) && !empty($email) && !empty($pass)){
        $sql = "INSERT INTO `admins`(`full_name`,`admin_name`, `email`, `password`) 
        VALUES ('$full_name','$name','$email','$pass')";
        $stat=$dsn->prepare($sql);
        $stat->execute();
        $_SESSION['success'] = "Registration completed successfully, you can Login Now";

    }
}
// header("Location:../users.php");
header("refresh:3;url=../login.php");


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Education Admin | Login/Register</title>
    <!-- for alerts -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
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
                <input type="text" class="form-control" name="admin_name" placeholder="Username" required="" />
              </div>
              <div>
                <input type="email" class="form-control" name="email" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
              </div>
              <div >
                <button name="signup" class="btn btn-default submit">Submit</button>
                <!-- <input type="submit" name="signup" value="Submit"/> -->
                <!-- <a class="btn btn-default submit" name="signup" href="../index.php" >Submit</a> -->
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Education Admin</h1>
                  <p>©2016 All Rights Reserved. Education Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
    </div>
    </div>
  </body>
</html>