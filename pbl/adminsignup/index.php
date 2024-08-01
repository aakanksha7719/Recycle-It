<?php 
require_once 'controllerUserData.php';
$email = $_SESSION['email'];
$password = $_SESSION['password'];
$name = "";
if($email != false && $password != false){
    $sql = "SELECT * FROM adminlogin_tbl WHERE email = '$email'";
    $run_Sql = mysqli_query($con, $sql);
    echo "Now in Admin Login";
    if($run_Sql){
        $fetch_info = mysqli_fetch_assoc($run_Sql);
        $status = $fetch_info['status'];
        $code = $fetch_info['code'];
        $name = $fetch_info['name'];
        if($status == "verified"){
            if($code != 0){
                header('Location: reset-code.php');
            }
        }else{
            header('Location: user-otp.php');
        }
    }
}else{
    header('Location: adminlogin.php');
}

?>
<!DOCTYPE html>
<html>
<head> 
     <title>Admin Dashboard</title>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
     <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<style>@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css');
@media(min-width:768px) {
    body {
        margin-top: 10px;
        background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgb(153 244 255) 100%);
    }
    /*html, body, #wrapper, #page-wrapper {height: 100%; overflow: hidden;}*/
}

#wrapper {
    padding-left: 0;    
}

#page-wrapper {
    width: 100%;        
    padding: 0;
    /*background-color: #fff;*/
}

@media(min-width:768px) {
    #wrapper {
        padding-left: 210px;
    }

    #page-wrapper {
        padding: 22px 10px;
        /*margin-right:-200px;*/
    }
}

/* Top Navigation */

.top-nav {
    padding: 0 15px;
    padding-bottom: 0px;
}

.top-nav>li {
    display: inline-block;
    float: left;
}

.top-nav>li>a {
    padding-top: 0px;
    padding-bottom: 20px;
    line-height: 20px;
    color: #000000;
}

.top-nav>li>a:hover,
.top-nav>li>a:focus,
.top-nav>.open>a,
.top-nav>.open>a:hover,
.top-nav>.open>a:focus {
    color: #fff;
    background-color: #1a242f;
}

.top-nav>.open>.dropdown-menu {
    float: left;
    position: absolute;
    margin-top: 0;
    /*border: 1px solid rgba(0,0,0,.15);*/
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    background-color: #fff;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}

.top-nav>.open>.dropdown-menu>li>a {
    white-space: normal;
}

/* Side Navigation */

@media(min-width:368px) {
    .side-nav {
        position: fixed;
        top: 57px;
        left: 225px;
        width: 210px;
        margin-left: -225px;
        border: none;
        border-radius: 0;
        border-top: 1px rgba(0,0,0,.5) solid;
        overflow-y: auto;
        background-color: #37517e;
        /*background-color: #5A6B7D;*/
        bottom: 0;
        overflow-x: hidden;
        padding-bottom: 40px;
    }

    .side-nav>li>a {
        width: 225px;
        border-bottom: 1px rgba(0,0,0,.3) solid;
    }

    .side-nav li a:hover,
    .side-nav li a:focus {
        outline: none;
        background-color: #1a242f !important;
    }
}

.side-nav>li>ul {
    padding: 0;
    border-bottom: 1px rgba(0,0,0,.3) solid;
}

.side-nav>li>ul>li>a {
    display: block;
    padding: 10px 15px 10px 38px;
    text-decoration: none;
    /*color: #999;*/
    color: #fff;    
}

.side-nav>li>ul>li>a:hover {
    color: #fff;
}

.navbar .nav > li > a > .label {
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  position: absolute;
  top: 14px;
  right: 6px;
  font-size: 10px;
  font-weight: normal;
  min-width: 15px;
  min-height: 15px;
  line-height: 1.0em;
  text-align: center;
  padding: 2px;
  
}
.navbar-inverse .navbar-nav>li>a {

    color: #ffffff;
}

.navbar .nav > li > a:hover > .label {
  top: 10px;
}

.navbar-brand {
    padding: 5px 5px;
}
.logo1{
    border-radius :50%;
}
.panel.panel-blue {
  border-radius: 0px;
  box-shadow: 0px 0px 10px #888;
  border-color: #266590;
}
.panel.panel-blue .panel-heading {
  border-radius: 0px;
  color: #FFF;
  background-color: #266590;
}
.panel.panel-blue .panel-body {
  background-color: #F2F2F2;
  color: #4D4D4D;
}
.btnStyle{
    margin-top:8px; 
}
</style>
</head>
<body>


      <!-- Favicons -->
  <link href="adminsignup/icon2.PNG" rel="icon">

<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<!-- Modal Popup -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Confirmation:</h4>
      </div>
      <div class="modal-body">
        Are you sure you want to delete?
      </div>
      <div class="modal-footer">
        <a href=""  class="btn btn-danger" id="modalLink" >
                Delete
        </a>    
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style='background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgb(153 244 255) 100%);'>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost/pbl/admin_index.html">
                <img src="icon2.PNG" alt="LOGO"heigth='50'width='50'class='logo1'>
            </a>
            <a class="navbar-brand" href="http://localhost/pbl/admin_index.html">
                <img src="rc8.PNG" alt="LOGO"heigth='160'width='150'class='img-fluid'>
            </a>
        </div>
        <!-- <p style="display: inline;color: white;font-size: 36px;font-family: 'Times New Roman'" >Recycle It</p> -->
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">           
            <li>
                <a href="#" data-placement="bottom"   data-toggle="tooltip"> <h5 style="font-size: 16px;" ><?php echo 'Admin:'.$name ;?></h5> 
            </li>
        </ul>

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse"style='background: linear-gradient(60deg, rgb(143 218 245) 0%, rgb(149 233 250) 100%);float: right;'>
            <ul class="nav navbar-nav side-nav"style="background: linear-gradient(60deg, rgba(84,58,183,1) 0%, rgba(84,58,183,1) 100%); ">
                <li>
                    <a href="index.php" ><i class="fa fa-fw fa-search"></i> Dashboard</a>
                   
                </li>
               <!-- <li>
                    <a href="forgot-password.php"><i class="fa fa-fw fa-paper-plane-o"></i> Change password</a>
                </li> -->
                <li>
                    <a href="logout-user.php"><i class="fa fa-fw fa fa-question-circle"></i> Logout</a>
                </li>
               <!-- <li>
<button type="button" data-toggle="modal" data-target="#myModal">Launch modal</button>

                </li> -->
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

     <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h1>Welcome Admin!</h1>
                      <!--table start  -->
                      <table  cellspacing:="12" class='table'>
             <tr class="panel-heading">
                 <th> Id </th>
                 <th> Images </th>
                 <th> Date </th>
                 <th> Name </th>
                 <th> Mobile </th>
                
                 <th> Waste Category </th>
                 <th> vendor id </th>

                 <th>Location</th>
                 <th>Location Description</th>
                 <th>Status</th>
                 <th >Action</th>
                 
                 <th>Update status</th>
             </tr>

   <?php
   // error_reporting(0);
    
   include("connection.php");
   $hostForImage ="http://localhost/pbl/phpGmailSMTP/upload/";
   $query = "select * from garbageinfo";
   $data = mysqli_query($con,$query);
   $total = mysqli_num_rows($data);
     

   if($total!=0) {

     
      while($result=mysqli_fetch_assoc($data)){

     echo "
           <tr class='panel panel-blue'>

               <td>   ".$result['Id']." </td>
               <td><a href = '".$hostForImage.$result['file']. "'><img src = '".$hostForImage.$result['file']. " 'height='200'width='200'/></a> </td>               
               <td>   ".$result['date']." </td>
               <td>   ".$result['name']." </td>
               <td>   ".$result['mobile']."  </td>
              
               <td>   ".$result['wastetype']." </td>
               <td>   ".$result['Vender_Id']."  </td>
               <td>   ".$result['location']." </td>
               <td>   ".$result['locationdescription']."  </td>
               <td>   ".$result['status']."  </td>

               <td data-toggle='modal' data-target='#myModal' id='dataval' onclick='getValue($result[Id])' data-address='admindelete.php?i=$result[Id]'  class='btnStyle btn btn-danger'>Delete</td>
               <td> <a href = 'status.php?i=$result[Id]&s=$result[status] 'class='btn btn-success'>Status</a></td>
               
               </tr> ";
               
            }
            // <td><a href = 'admindelete.php?i=$result[Id]' class='btn btn-danger'>Delete</a></td>
      

   }
?>   
</table>
      
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
<script>
// $(function(){
//     $('[data-toggle="tooltip"]').tooltip();
//     $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
//         $(this).prev().find(".fa").eq(1).removeClass("fa-angle-right").addClass("fa-angle-down");
//     });
//     $('.side-nav .collapse').on("show.bs.collapse", function() {                        
//         $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-right");        
//     });
// })  

// var delId;
// function modalLauch(id){
//     delId=id;
//     $('#toDeleteId').val(id);
// }
// function confirmDelete(){
//     window.location.replace("http://localhost/pbl/adminsignup/admindelete.php?i="+delId);
// }
function getValue(data1)
{
    const link = document.getElementById("modalLink");
    console.log(link);
    console.log("admindelete.php?i="+data1+"  ")
    link.href = `admindelete.php?i=${data1}`;
    console.log(link);
}
</script>

</body>
</html>