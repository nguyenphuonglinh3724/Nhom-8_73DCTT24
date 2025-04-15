<?php
if (isset($_POST['create'])) {
    require '../inc/myconnect.php';

    // Retrieve form data
    $maNhanVien = $_POST['MaNhanVien'];
    $tenNhanVien = $_POST['TenNhanVien'];
    $taiKhoan = $_POST['TaiKhoan'];
    $matKhau = $_POST['MatKhau'];
    $soDienThoai = $_POST['SoDienThoai'];
    $email = $_POST['Email'];

    // SQL query to insert a new employee
    $sql = "INSERT INTO nhanvien (MaNhanVien, TenNhanVien, TaiKhoan, MatKhau, SoDienThoai, Email)
            VALUES ('$maNhanVien', '$tenNhanVien', '$taiKhoan', '$matKhau', '$soDienThoai', '$email')";

    // Execute the query and handle the result
    if (mysqli_query($conn, $sql)) {
        header('Location: qlynhanvien.php'); // Redirect to the employee management page after successful insertion
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
