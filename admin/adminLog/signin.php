<?php
include('../db.php');
session_start();
if(isset($_POST['signin'])){
    $name = $_POST['admin_name'];
    $pass =  $_POST['password'];
    if(!empty($name) && !empty($pass)){
        $sql = "SELECT * FROM `admins` WHERE `admin_name`=? ";
        $stat=$dsn->prepare($sql);
        $stat->execute([$name]);
        $data = $stat->fetchObject();
        //var_dump($data);
        if($data){
            $checker = password_verify($pass, $data->password);
            if($checker){
                $_SESSION['full_name']   = $data->full_name;
                $_SESSION['admin_id']   = $data->admin_id;
                $_SESSION['admin_name'] = $data->admin_name;
                $_SESSION['email']     = $data->email;
                $_SESSION['password']  = $data->password;
                header("location:../users.php");
                
             }
            else{
                $_SESSION['failed'] = 'Password Not correct';
               }                  
        }
       else{
        $_SESSION['failed'] = 'Data Not correct';
     }
    }
    
        
}
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
            <div>
             <?php if(isset($_SESSION['failed'])):?>
              <div class="alert alert-danger"><?php echo $_SESSION['failed']  ;?></div>
              <?php unset($_SESSION['failed'] );?>
             <?php endif;?>
            </div>
            <form action=<?php echo $_SERVER['PHP_SELF'];?> method="POST">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" name="admin_name" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
              </div>
              <div>
                <button name="signin" class="btn btn-default submit">Log in</button>
                <!-- <a class="btn btn-default submit" name="signin" href="../index.php">Log in</a> -->
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
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