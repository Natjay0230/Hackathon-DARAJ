<?php
$mysqli = new mysqli("remotemysql.com","dXZoqjEKHq","dxBedG2XYi","dXZoqjEKHq");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}else{
  echo "Yep! Database connected.";
}
?>
