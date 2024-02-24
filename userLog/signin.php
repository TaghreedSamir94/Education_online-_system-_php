<?php
include('../admin/db.php');
session_start();
if(isset($_POST['signin'])){
    $name = $_POST['username'];
    $pass =  $_POST['password'];
    if(!empty($name) && !empty($pass)){
        $sql = "SELECT * FROM `users` WHERE `user_name`=? ";
        $stat=$dsn->prepare($sql);
        $stat->execute([$name]);
        $data = $stat->fetchObject();
        //var_dump($data);
        if($data){
            $checker = password_verify($pass, $data->password);
            if($checker){
              $_SESSION['date']  = $data->date;
              $_SESSION['user_name'] = $data->user_name;
              $_SESSION['user_id']   = $data->user_id;
              $_SESSION['full_name']   = $data->full_name;
              $_SESSION['email']     = $data->email;
              $_SESSION['password']  = $data->password;
              $_SESSION['active']  = $data->active;
              $_SESSION['users_type']  = $data->users_type;
              
                
              header("location:../index.php");
                
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

    <title>Education Meet | Login/Register</title>

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
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

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
                <input type="text" class="form-control" name="username" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
              </div>
              <div>
                <button name="signin" class="btn btn-default submit">Log in</button>
                <!-- <a class="btn btn-default submit" href="index.php">Log in</a> -->
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
