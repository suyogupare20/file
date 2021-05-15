<?php
session_start();

if(!isset($_SESSION['emailAddress']))
{
    echo '<script>alert("Please Log in to Proceed")</script>';
    echo "<script>
            window.location='../index.php';
        </script>";
} else {
    if($_SESSION['role']!='receptionist'){
        $a = 'location:../'.$_SESSION['role'].'/'.$_SESSION['role'].'.php';
        header($a);
    }
}
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head
  <?php include('../partials/head.php') ?>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div class="ml-auto">
        <button><a href="../logout.php" tite="Logout">Logout</a></button>
    </div>
    <div class="ml-auto">
        <button class="btn btn-outline-warning" data-bs-toggle="modal"
            data-bs-target="#RegisterModal">Register a new student</button>
    </div>
    <div class="modal fade" id="RegisterModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Registeration</h5>
                    <button type="button" class="btn-danger" data-bs-dismiss="modal" aria-label="Close">X</button>
                </div>
                <div class="modal-body">

                    <form action="studentRegisterRecep.php" method="post">
                        <div class="ml-2 mr-2">
                            <label class='form-label'>Name</label>
                            <input class="form-control" type="text" name="name" required>
                        </div>
                        <div class="ml-2 mr-2">
                            <label class='form-label'>Parent's Contact No.</label>
                            <input class="form-control" type="text" name="mobileNo" required>
                        </div>
                        <div class="ml-2 mr-2 student box">
                            <label class='form-label'>Class</label>
                            <select name="class" class="form-control" required>
                              <option value="" disabled selected>Choose</option>
                              <?php
                                include '../partials/config.php';
                                $sql = "SELECT DISTINCT standard FROM class";
                                $result=mysqli_query($conn,$sql);
                                if(!$result)
                                {
                                    echo "Error ".$sql."<br>".mysqli_error($conn);
                                }

                                while($rows = mysqli_fetch_assoc($result)) {
                              ?>
                                <option class="table" value="<?php echo $rows['standard'];?>" >

                                        <?php echo $rows['standard'] ;?>

                                    </option>
                              <?php
                                  }
                              ?>
                              </option>
                            </select>
                        </div>

                        <script>
                            function myFunction()
                            {
                            value1 = parseInt(document.getElementById("value1").value);
                            value2 = parseInt(document.getElementById("value2").value);
                                if(!value1==""&&!value2=="")
                                {
                                sum = value1 - value2;
                                document.getElementById("total").value = sum;
                                }
                            }
                        </script>

                        <div class="ml-2 mr-2 student box">
                            <label class='form-label'>Total Fees to be paid</label>
                            <input class="form-control" type="text" name="totalfees" id="value1" onkeyup="myFunction()">
                        </div>
                        <div class="ml-2 mr-2 student box">
                            <label class='form-label'>Fees paid</label>
                            <input class="form-control" type="text" name="paidfees" id="value2" onkeyup="myFunction()">
                        </div>
                        <div class="ml-2 mr-2 student box">
                            <label class='form-label'>Remaining Fees</label>
                            <input class="form-control" type="text" name="remfees" id="total" readonly="readonly">
                        </div>
                        <br>
                        <button type="submit" name="submit" class="btn btn-primary">Register</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
  </body>
</html>