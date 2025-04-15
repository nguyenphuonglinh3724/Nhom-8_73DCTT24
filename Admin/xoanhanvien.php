<?php
require '../inc/myconnect.php';
$id = $_GET['id'];

// SQL to delete a record
$sql = "DELETE FROM nhanvien WHERE MaNhanVien=" . $id;

if ($conn->query($sql) === TRUE) {
    header('Location: qlynhanvien.php'); // Redirect to the employee management page
} else {
    echo "Error deleting record: " . $conn->error;
}

$conn->close();
?>
