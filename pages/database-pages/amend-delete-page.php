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
	if (!$_POST['lastname'] OR !$_POST['emailaddress']){
		echo 'Please go back and complete the entry so we know whose details to amend';
		exit;
	}
// now we have that we make  variabls from the POST return
	else {
	
		$lastname = $_POST['lastname'];
		$emailaddress = $_POST['emailaddress'];
		$unsubscribe = isset($_POST['unsubscribe']);
		$delete = isset($_POST['delete']);
		
	}
		/* the next section makes sure the checknoxes give a yes or no answer so the ENUM in the database can handle it*/
		if ($unsubscribe == "on"){
			$unsubscribe = "yes";
		}
		else {
			$unsubscribe = "no";
		}
	
	if ($delete == "on"){
			$delete = "yes";
		}
		else {
			$delete = "no";
		}
	if ($delete == 'no' AND $unsubscribe =='no') {
		echo "please go back and choose an option!";
		exit;
	}
	

			
			
// Next up is connecting to the server and the database on it. Note the log in details are in the code here and so exposed at the moment.
//$dbconn = @mysqli_connect('localhost', 'root', '', 'localhost'); // This is for Xampp 
$dbconn = @mysqli_connect('dgm.whs.school.nz', 'yr13dgm4', 'yr13dgm4designer', 'db_yr13dgm4'); // School server

//now check that we have a connection. !dbconn means if there ISNT a dbconn variable defined, as above...ie: connection failed
if(!$dbconn){
	echo 'PHP could not connect to the database server';
	exit();
}
	
	
		//We need to know the customer ID for the details entered
$custIDfetch = "SELECT Cust_ID FROM emailaddress WHERE  email = '$emailaddress';";
$result = mysqli_query($dbconn, $custIDfetch);
$num_rows = mysqli_num_rows($result);
if($num_rows==0){
		echo 'An error occured, please check your details are correct';
		exit;
	}
	
if ($result = $dbconn->query($custIDfetch)) {
 
	while ($row = $result->fetch_assoc()) {
			$PulledCustomerID = $row["Cust_ID"];
			}
}
	
	
//now I am getting the first name to make the message a bit more peronal for the feedback to the user
$sqlnamecheck = "SELECT firstname, newsletter FROM personal WHERE Cust_ID = $PulledCustomerID";
$result = mysqli_query($dbconn, $sqlnamecheck);
$num_rows = mysqli_num_rows($result);
	if($num_rows==0){
			echo 'An error occured finding out the firstname';
			exit;
		}
		
	if ($result = $dbconn->query($sqlnamecheck)) {
 
			while ($row = $result->fetch_assoc()) {
			$firstname = $row["firstname"];
			$mailing_list = $row["newsletter"];}
		}

//If they want to unsubscribe but not delete everything this this section applies
if ($unsubscribe === "yes" AND $delete === "no"){
	
		$mailing_list = "no";
		//now we set the mailing list to no with this query
		$sql = "UPDATE customers SET mailing_list = 'no' WHERE Cust_ID = $PulledCustomerID;"; 


		if ($dbconn->query($sql) === TRUE) {
	   		?> <p><?php echo "Thank you ".$firstname." ".$lastname." for your request. You have been unsubscribed and will receive no more newsletters,";?><br><?php echo "though you are still registered should you wish to request more products";?></p><?php
			} else {
	  		echo "Error: " .$sql."  ".$dbconn." error";
			}
		
	?>


	
	<p> Your details are now...</p>
<table width="800" border="1" cellpadding="10">

    <tr>
  
		  <td align = center>First Name</td>
		  <td align = center>Last Name</td>
		  <td align = center>Email Address</td>
		  <td align = center>Mailing list</td>
    </tr>
	 <tr>
   
		  <td align = center><?php echo $firstname;?></td>
		  <td align = center><?php echo $lastname;?></td>
		  <td align = center><?php echo $emailaddress;?></td>
		  <td align = center><?php echo $mailing_list;?></td>
    </tr>

</table>
	<?php }//this is the closing bracket of the unsubscribe only "if" statement started after the dbconn connection?>
	  
	
 <!--Now the section is  for those who want to delete their records entirely and leave-->
	
  <?php if ( $delete == "yes"){
        
        $sql6 = "DELETE FROM mode WHERE Cust_ID = $PulledCustomerID;";
        if ($dbconn->query($sql6) === TRUE) {
            $sqlresult3 = true;
         } else {
           echo "Error: " . $sql . "<br>" . $dbconn->error;
         }

        $sql5 = "DELETE FROM usernametable WHERE Cust_ID = $PulledCustomerID;"; 

        if ($dbconn->query($sql5) === TRUE) {
            $sqlresult5 = true;
         } else {
           echo "Error: " . $sql . "<br>" . $dbconn->error;
         }

        $sql4 = "DELETE FROM roles WHERE Cust_ID = $PulledCustomerID;"; 

        if ($dbconn->query($sql4) === TRUE) {
            $sqlresult4 = true;
         } else {
           echo "Error: " . $sql . "<br>" . $dbconn->error;
         }
	
		$sql3 = "DELETE FROM purchases WHERE Cust_ID = $PulledCustomerID;"; 

			if ($dbconn->query($sql3) === TRUE) {
	   			$sqlresult3 = true;
				} else {
	  			echo "Error: " . $sql . "<br>" . $dbconn->error;
				}
	
	
		$sql2 = "DELETE FROM emailaddress WHERE Cust_ID = $PulledCustomerID;"; 

			if ($dbconn->query($sql2) === TRUE) {
	   			$sqlresult2 = true;
				} else {
	  			echo "Error: " . $sql . "<br>" . $dbconn->error;
				}
	
		$sql = "DELETE FROM personal WHERE Cust_ID = $PulledCustomerID;"; 

			if ($dbconn->query($sql) === TRUE) {
	   			$sqlresult = true;
				} else {
	  			echo "Error: " . $sql . "<br>" . $dbconn->error;
				}

	
			//now confirm back to the customer that thweir recortds have been deleted
		if ($sqlresult == true AND $sqlresult2 == true AND $sqlresult3 == true AND $sqlresult4 == true AND $sqlresult5 == true){?><p><?php
			echo "Your records have all been delted and you will recieved no forther communications from us";?><br><?php
			echo"Thank you for being apart of the micro:bits community!! Hopefully we will see you again";?></p><?php
			}
	}

	?>
	   <!-- last up, we need to free up the server and close the connection with the 2 functions that are built into php for the purpose as shown here below-->
	<?php 
	  mysqli_close($dbconn);
	   ?>
 <div class="commandcancel"> <a href="../../index.html" id="redbutton">return to home</a></div>
