<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Micro:Bits</title>
    <link rel="stylesheet" href="../../stylesheets/light-theme.css">
    <link rel="stylesheet" href="../../stylesheets/header.css">
    <link rel="stylesheet" href="../../stylesheets/body.css">
	<link rel="stylesheet" href="../../stylesheets/styledb.css">
    <script src="../../javascript/functions.js"></script>
    <script>

</script>

</head>
<body onload="mainDarkmodeData(), mainChangeData()">
    <div class="header">

        <div id="logo">


            <a href="../../index.html"><img class="image-resize" style="width: 80%;" alt="Micro:bit close up" src="../../images/processed/logo/microbit-logo.png"></a>

        </div>

        <div id="title">

            <h1>Micro:Bits</h1>

        </div>

        <div id="darkmode">

            <button onclick="dataToggleMode()" id="dark-mode-button" class="center"><img src="../../images/processed/icons/Moon-icon.png" alt="Moon"></button>

        </div>

        <div id="mode">
            <button onclick="dataToggleTheme()" id="mode-button" class="center"><img src="../../images/processed/icons/Student-Icon.png" alt="Student"></button>

        </div>

    </div>

    <div class="navbar">

        <a href="../pages/lessons.html">Lessons</a>

        <a href="../pages/gallery.html">Gallery</a>

        <a href="../pages/microbits.html">Micro:bits</a>

        <a href="../pages/about-us.html">About Us</a>

    </div>

    <?php
//first check that there was actually something entered in the search box and so went to POST
	if (!$_POST['firstname']OR !$_POST['lastname'] OR !$_POST['emailaddress']){
		echo 'Please go back and complete the entry';
		exit;
	}
// now we have that we make  variables from the POST return
	else {
		
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$emailaddress = $_POST['emailaddress'];
		$age = $_POST['age'];
        $phonenumber = $_POST['phonenumber'];
		$gender = $_POST['gender'];
		$pronouns = $_POST['pronouns'];
		$username = $_POST['username'];
		$newsletter = isset($_POST['newsletter']);
        $equipment = isset($_POST['equipment']);
        $poster = isset($_POST['poster']);
        $video_tutorials = isset($_POST['video_tutorials']);
        $darkmode = isset($_POST['darkmode']);
        $student = isset($_POST['student']);
		//and this one
        $signdate= date("Y-m-d");
		$orderdate= date("Y-m-d");//this didnt come from post, it is an inbuilt function to give us the date
	}
		/* the next section makes sure the checknoxes give a yes or no answer so the ENUM in the database can handle it*/
		if ($newsletter == "on"){
			$newsletter = "yes";
		}
		else {
			$newsletter = "no";
		}
	
	if ($equipment == "on"){
			$equipment = "yes";
		}
		else {
			$equipment = "no";
		}
	if ($poster == "on"){
			$poster = "yes";
		}
		else {
			$poster = "no";
		}
		
	if ($video_tutorials == "on"){
			$video_tutorials = "yes";
		}
		else {
			$video_tutorials = "no";
		}
		
	if ($darkmode == "on"){
			$darkmode = "yes";
		}
		else {
			$darkmode = "no";
		}
    
    if ($student == "on"){
		    $student = "yes";
		}
		else {
			$student = "no";
		}
	?>
	<p align="center">Thank you for signing up to cycling Wellington. We hope that you will enjoy what is on offer and of course at anytime you can either order more or unsubscribe or just plane leave the site entirely.<br>
	For your peace of mind, please note that we never pass details to 3rd parties and always abide by the Privacy Act 2020.</p>

	<?php //now call the connection as a require
// Next up is connecting to the server and the database on it. Note the log in details are in the code here and so exposed at the moment.
//$dbconn = @mysqli_connect('localhost', 'root', '', 'localhost'); // This is for Xampp 
$dbconn = @mysqli_connect('dgm.whs.school.nz', 'yr13dgm4', 'yr13dgm4designer', 'db_yr13dgm4'); // School server

//now check that we have a connection. !dbconn means if there ISNT a dbconn variable defined, as above...ie: connection failed
if(!$dbconn){
	echo 'PHP could not connect to the database server';
	exit();
}


	
/*define a query and we use mysql syntax in this variable to pass to the server
The query is in a variable here. It hasnt been implimented at this stage, just put ionto the variable that i have called $sql*/

	$sql= "INSERT INTO personal (firstname, lastname, sdate, phonenumber, age, gender, pronouns, newsletter) VALUES ('$firstname', '$lastname', '$signdate', '$phonenumber', '$age', '$gender', '$pronouns', '$newsletter')";
	//this is the line below that makes it work and puts a confirmation of it working OK into a variable for us to use later
		if ($dbconn->query($sql) === TRUE) {
	   $sqlresult = true; // this puts true into $sqlresult if the query went correctly. We will use it later
	} else {
	  echo "Error: " . $sql . "<br>" . $dbconn->error;
	}
	//Same again here for the second table entry. Note you can ingore the auto increment on theprimary key (AI)_ as the database copmpletes that automatically
	


	// transfering the new cust ID to the foreign key in the purchases table. We dont know what it is and it is the Foreign key not the primary one here so we need to find out.
	$query = "SELECT Cust_ID FROM personal WHERE firstname = '$firstname' AND lastname = '$lastname';";
	$result = mysqli_query($dbconn, $query);
		$num_rows = mysqli_num_rows($result);
		if($num_rows==0){
			echo 'An error occured, please try again';
			exit;
		}
		if ($num_rows!=0){
			//echo $num_rows;
		}
		if ($result = $dbconn->query($query)) {
 
			while ($row = $result->fetch_assoc()) {
			$PulledCustomerID = $row["Cust_ID"];
			//echo $PulledCustomerID;
			}
			
		}

	//Finally we have the pulled custID so we can run the Insert for the thrid table
	$sql5 = "INSERT INTO `purchases` (`Cust_ID`, `purchase-date`, `equipment`, `videos`, `poster`) VALUES ('$PulledCustomerID', '$orderdate', '$equipment', '$video_tutorials', '$poster')";
	
		if ($dbconn->query($sql5) === TRUE) {
	  $sqlresult5 = true;
	} else {
	  echo "Error: " . $sql5 . "<br>" . $dbconn->error;
	}

    $sql2= "INSERT INTO emailaddress (`Cust_ID`, `email`) VALUES ('$PulledCustomerID','$emailaddress')";
	
		if ($dbconn->query($sql2) === TRUE) {
	  $sqlresult2 = true;
	} else {
	  echo "Error: " . $sql . "<br>" . $dbconn->error;
	}

    //Same again here for the second table entry. Note you can ingore the auto increment on theprimary key (AI)_ as the database copmpletes that automatically
	$sql4= "INSERT INTO usernametable (`Cust_ID`, `username`) VALUES ('$PulledCustomerID','$username')";
	
		if ($dbconn->query($sql4) === TRUE) {
	  $sqlresult4 = true;
	} else {
	  echo "Error: " . $sql . "<br>" . $dbconn->error;
	}
	
    $sql6= "INSERT INTO roles (`Cust_ID`, `student`) VALUES ('$PulledCustomerID','$student')";
	
		if ($dbconn->query($sql6) === TRUE) {
	  $sqlresult6 = true;
	} else {
	  echo "Error: " . $sql6 . "<br>" . $dbconn->error;
	}

    $sql7= "INSERT INTO mode (`Cust_ID`, `darkmode`) VALUES ('$PulledCustomerID','$darkmode')";
	
		if ($dbconn->query($sql7) === TRUE) {
	  $sqlresult4 = true;
	} else {
	  echo "Error: " . $sql7 . "<br>" . $dbconn->error;
	}

	/* the reason we have been collecting the successful INSERT results is so that we can confirm all is good to the user.*/
if ($sqlresult=== TRUE AND $sqlresult2 === TRUE AND $sqlresult4=== TRUE AND  $sqlresult6 === TRUE)
{ ?> <div class="sqlresult"> <?php echo "Details successfully added. Please wait one working day to recieve the products you requested";?></div> 

<?php } ?>
	<!-- all that follows below is showing the user the details they entered on the form on the first page so they know whjat they have signed up for. It just echo's the variables we made at the top of the page-->
	<p> You entered your details as...</P>
<table width="800" border="1" cellpadding="10">
  
    <tr>
  
      <td align = center>First Name</td>
      <td align = center>Last Name</td>
		<td align = center>Customer group</td>
		<td align = center>mailing list</td>
    </tr>
	     <tr>
   
      <td align = center><?php echo $firstname;?></td>
      <td align = center><?php echo $lastname;?></td>
		<td align = center><?php echo $age;?></td>
		<td align = center><?php echo $emailaddress;?></td>
    </tr>
	  

  
</table>
	  
  <!-- last up, we need to free up the server and close the connection with the 2 functions that are built into php for the purpose as shown here below-->
	  <?php 
	
	  mysqli_close($dbconn);
	   ?>
  


		<!--meanwhile back in HTML land we need snippets of php in the table cells below to show the results. While the is a result to show, put it in a cell is what the function just said so $row gets echo'd below-->
  
	<p>You have selected the following products</p>
	<table width="800" border="1" cellpadding="10">
  
    <tr>
      
        <td align = center>Subscribed to our newsletter</td>
        <td align = center>The poster ordered</td>
		<td align = center>The hardware equipment</td>
		<td align = center>Video tutorials</td>
		<td align = center>Dark mode</td>
		<td align = center>Student Mode</td>
		
		
    </tr>
		<tr>
     
        <td align = center><?php echo $newsletter;?></td>
        <td align = center><?php echo $poster;?></td>
		<td align = center><?php echo $equipment;?></td>
		<td align = center><?php echo $video_tutorials;?></td>
		<td align = center><?php echo $darkmode;?></td>
		<td align = center><?php echo $student;?></td>
			
    </tr>
	</table>
	
 <a href="contact.php"> <p id="return"> Click here to return to the products page</p></a>
 <div class="commandcancel"> <a href="unsignup-page.html" id="redbutton">Amend or delete</a></div>
