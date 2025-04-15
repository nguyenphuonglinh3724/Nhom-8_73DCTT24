<?php 
if (isset($_POST['Edit'])) {
    require '../inc/myconnect.php';
    
    // Retrieve data from the form
    $id = $_POST['MaNhanVien'];
    $tenNhanVien = $_POST['TenNhanVien'];
    $taiKhoan = $_POST['TaiKhoan'];
    $matKhau = $_POST['MatKhau'];
    $soDienThoai = $_POST['SoDienThoai'];
    $email = $_POST['Email'];

    // Update query
    $sql = "UPDATE nhanvien SET 
                TenNhanVien = '$tenNhanVien',
                TaiKhoan = '$taiKhoan',
                MatKhau = '$matKhau',
                SoDienThoai = '$soDienThoai',
                Email = '$email'
            WHERE MaNhanVien = '$id'";

    // Execute the query
    if ($conn->query($sql) === TRUE) {
        header('Location: qlynhanvien.php'); // Redirect to the employee management page
    } else {
        echo "Error updating record: " . $conn->error;
    }
    $conn->close();
}
?>
