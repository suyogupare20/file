<?php
session_start();


include '../partials/head.php';
if(!isset($_SESSION['emailAddress']))
{
  echo '<script>alert("Please Log in to Proceed")</script>';
  echo "<script>
    window.location='../index.php';
  </script>";
} else {
  if($_SESSION['role']!='student'){
    $a = 'location:../'.$_SESSION['role'].'/'.$_SESSION['role'].'.php';
    header($a);
  }
}
?>

<!DOCTYPE>
<html>
<head>
<title>Student Page</title>
<style>
body {
    background: url("bg.jpg");
	background-size:100%;
	background-repeat: no-repeat;
	position: relative;
	background-attachment: fixed;
}
/* button */
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 500px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.title{
	background-color: #ccc11e;
	font-size: 28px;
  padding: 20px;

}
.button3 {
    border: none;
    color: white;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button3 {
    background-color: white;
    color: black;
    border: 2px solid #f4e542;
}

.button3:hover {
    background-color: #f4e542;
    color: Black;
}
</style>
<script>
  $(document).bind("contextmenu",function(e){return false;});
  $(document).ready(function () {
      $('body').bind('cut copy', function (e) {
          e.preventDefault();
      });
  });
</script>
</head>
<body>
<h1>Student Page</h1>
    Click here to <a href="../logout.php" tite="Logout">Logout.</a>
<?php
include '../partials/config.php';
$result = mysqli_query($conn, "SELECT testid,question_id_array,correct_option_array,subject_id,mark_per_question,negative_mark,instant_result FROM testdata WHERE test_name='Sample Test 4'");

if($row = mysqli_fetch_array($result))
{
  $_SESSION['testID'] = $row['testid'];
  $subject_id = $row['subject_id'];
  $question = $row['question_id_array'];
  $correctOption = $row['correct_option_array'];
  $question = explode (",", $question);
  $correctOption = explode (",", $correctOption);
  $_SESSION['markPerQues'] = $row['mark_per_question'];
  $_SESSION['negMark'] = $row['negative_mark'];
  $_SESSION['resultType'] = $row['instant_result'];
  $hashMap = array();
  $i = 0;
  while($i < sizeof($question)){
    $hashMap[$question[$i]] = $correctOption[$i];
    $i = $i + 1;
  }
  $_SESSION['hashMap'] = $hashMap;
}
?>
<div class="title">Quiz</div>
  <form action="checkAnswers.php" method="post">
    <table>
    <?php
      $i = 0;
      while($i < sizeof($question)){
          $j = $question[$i];
          $sql = "SELECT question,option1,option2,option3,option4 FROM $subject_id WHERE qid = $j";
          $next = mysqli_query($conn2, $sql);
          $k = $next->num_rows;
          if ($k > 0) {
            while($row = $next->fetch_assoc()) {
              ?>
              <tr><td><h3><br><?php echo $row['question']; ?></h3></td></tr>
              <tr><td><input required name="<?php echo $question[$i]; ?>" type="radio" value="A">&nbsp;<?php echo $row['option1']; ?><br>
              <tr><td><input required name="<?php echo $question[$i]; ?>" type="radio" value="B">&nbsp;<?php echo $row['option2']; ?></td></tr>
              <tr><td><input required name="<?php echo $question[$i]; ?>" type="radio" value="C">&nbsp;<?php echo $row['option3']; ?></td></tr>
              <tr><td><input required name="<?php echo $question[$i]; ?>" type="radio" value="D">&nbsp;<?php echo $row['option4']; ?><br><br><br></td></tr>
              <?php
            }
          $correspondingAns = $hashMap[$j];
          $i = $i + 1;
        }
      }
     ?>
     <tr><td><button class="button3" name="submit">Submit</button></td></tr>
    </table>
  <form>
</body>
</html>
