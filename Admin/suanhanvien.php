<?php
ob_start();
?>
<?php 
 include "head.php";
?>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
    <?php 
 include "Header.php";
?> 
    <?php 
 include "aside.php";
?>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Sửa 
            <small>Nhân viên</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index.php"><i class="fa fa-dashboard"></i> Trang quản trị</a></li>
          </ol>
        </section>
        
        <?php
           require '../inc/myconnect.php';
           // Get employee details by ID
           $id = $_GET["id"];
           $query = "SELECT MaNhanVien, TenNhanVien, TaiKhoan, MatKhau, SoDienThoai, Email FROM nhanvien WHERE MaNhanVien = '$id'";
           $result = $conn->query($query);
           $row = $result->fetch_assoc();
        ?>
        
        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Sửa Nhân viên</h3>
                </div>
                <!-- form start -->
                <form class="form-horizontal" method="POST" action="xulysuanhanvien.php">
                  <div class="box-body">
                    <!-- MaNhanVien (Hidden) -->
                    <input type="hidden" name="MaNhanVien" value="<?php echo $row['MaNhanVien']; ?>">

                    <!-- TenNhanVien -->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Tên Nhân viên</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="TenNhanVien" required value="<?php echo $row['TenNhanVien']; ?>">
                      </div>
                    </div>

                    <!-- TaiKhoan -->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Tài khoản</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="TaiKhoan" required value="<?php echo $row['TaiKhoan']; ?>">
                      </div>
                    </div>

                    <!-- MatKhau -->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Mật khẩu</label>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" name="MatKhau" required value="<?php echo $row['MatKhau']; ?>">
                      </div>
                    </div>

                    <!-- SoDienThoai -->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Số điện thoại</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="SoDienThoai" required value="<?php echo $row['SoDienThoai']; ?>">
                      </div>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                      <label class="col-sm-2 control-label">Email</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" name="Email" required value="<?php echo $row['Email']; ?>">
                      </div>
                    </div>
                  </div>

                  <!-- /.box-body -->
                  <div class="box-footer">
                    <a href="qlynhanvien.php"><button type="button" class="btn btn-default">Cancel</button></a>
                    <button type="submit" name="Edit" class="btn btn-info pull-right">Edit</button>
                  </div>
                  <!-- /.box-footer -->
                </form>
              </div>
            </div>
          </div>
        </section>
      </div>

      <?php 
      include "footer.php";
      include "ControlSidebar.php";
      ?>

      <div class="control-sidebar-bg"></div>
    </div>

    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="plugins/fastclick/fastclick.min.js"></script>
    <script src="dist/js/app.min.js"></script>
    <script src="dist/js/demo.js"></script>
  </body>
</html>
<?php ob_end_flush(); ?> 
