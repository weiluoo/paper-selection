<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$user = 'wei';
$password = 'ERL303';
$db = 'papers';
$host = null;
$port = null;
$socket = '/cloudsql/cs6001-200702:us-central1:cs6001';

// Create connection
$conn = mysqli_connect($host, $user, $password, $db, $port, $socket);

// Check connection
if (!$conn) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully" . "<br>";


// for modal
$relatedSQL = "SELECT related_name, link_address FROM papers.Relateds;";
$relatedRes = mysqli_query($conn, $relatedSQL);

// for main table
$typeSQL = "SELECT type_id, type_name FROM papers.Types;";
$typeRes = mysqli_query($conn, $typeSQL);
$types = array();
while ($row = mysqli_fetch_array($typeRes)) {
    $types[$row['type_id']] = $row['type_name'];
}

$paperSQL = "SELECT paper_id, paper_name, link_address, type_id, student_name FROM papers.Papers;";
$paperRes = mysqli_query($conn, $paperSQL);
$n = 0;
$ids = array(); $papers = array(); $links = array(); $paperTypes = array(); $students = array();
$selectedCount = 0;
$selectedIds = array();
while ($row = mysqli_fetch_array($paperRes)) {
    $ids[$n] = $row['paper_id'];
    $papers[$n] = $row['paper_name'];
    $links[$n] = $row['link_address'];
    $paperTypes[$n] = $types[$row['type_id']];
    $students[$n] = $row['student_name'];
    if ($students[$n] == 'None') {
        $selectedIds[$selectedCount] = $n;
        $selectedCount++;
    }
    $n++;
}

// submit data
function test_input($data) {
    $data = trim($data);
    $data = stripcslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

$idErr = $nameErr = "";
$id = -1;
$name = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if ($_POST["selectedId"] == "Choose...") {
        $idErr = "# is required";
    } else {
        $id = (int)test_input($_POST["selectedId"]);
        // check it id is used
        $usedNameSQL = "SELECT student_name FROM papers.Papers WHERE paper_id = '$ids[$id]' limit 1;";
        $usedNameRes = mysqli_query($conn, $usedNameSQL);
        $usedName = mysqli_fetch_object($usedNameRes);
        if ($usedName -> student_name != 'None') {
            $idErr = "This # is already selected.";
        }
    }
    
    if (empty($_POST["studentName"])) {
        $nameErr = "Student Name is required.";
    } else {
        $name = test_input($_POST["studentName"]);
        // check if name only contains letters and whitespace
        if (!preg_match("/^[a-zA-Z ]*$/",$name) | strlen($name) == 0) {
            $nameErr = "Only letters and white space allowed"; 
        }
    }
    
    if (empty($idErr) & empty($nameErr)) {
        $submitSQL = "UPDATE papers.Papers SET student_name = '" . $name . "' WHERE paper_id = " . $ids[$id] . ";";
        $submitRes = mysqli_query($conn, $submitSQL);
        header("Refresh:0");
    }
}

?>
