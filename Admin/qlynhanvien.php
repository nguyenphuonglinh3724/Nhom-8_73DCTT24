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
                Quản lý
                <small>Nhân viên</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="index.php"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                <li><a href="#">Quản lý</a></li>
                <li class="active">Quản lý Nhân viên</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Quản lý Nhân viên</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Mã Nhân Viên</th>
                                        <th>Tên Nhân Viên</th>
                                        <th>Tài Khoản</th>
                                        <th>Mật Khẩu</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Email</th>
                                        <th>Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody> 
                                <?php
                                    require '../inc/myconnect.php';
                                    $sql = "SELECT MaNhanVien, TenNhanVien, TaiKhoan, MatKhau, SoDienThoai, Email FROM nhanvien";
                                    $result = $conn->query($sql); 
                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while($row = $result->fetch_assoc()) {
                                ?>      
                                    <tr>                
                                        <td><?php echo $row["MaNhanVien"] ?></td>
                                        <td><?php echo $row["TenNhanVien"] ?></td>
                                        <td><?php echo $row["TaiKhoan"] ?></td>
                                        <td><?php echo $row["MatKhau"] ?></td>
                                        <td><?php echo $row["SoDienThoai"] ?></td>
                                        <td><?php echo $row["Email"] ?></td>
                                        <td>
                                            <a class="btn btn-primary" href="suanhanvien.php?id=<?php echo $row["MaNhanVien"] ?>">
                                                <i class="fa fa-edit fa-lg"></i> Chỉnh sửa
                                            </a>               
                                            <a class="btn btn-danger" onclick="return confirm('Bạn có thật sự muốn xóa không ?');" href="xoanhanvien.php?id=<?php echo $row["MaNhanVien"] ?>">
                                                <i class="fa fa-trash-o fa-lg"></i> Xóa
                                            </a>
                                        </td>
                                    </tr>  
                                <?php
                                        }
                                    }
                                ?>              
                                </tbody>                   
                            </table>         
                            <div style="text-align:left">
                                <a class="btn btn-primary" href="themnhanvien.php">
                                    Thêm Nhân viên
                                </a>
                            </div>         
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section>
        <!-- /.content -->
    </div><!-- /.content-wrapper -->

    <?php 
    include "footer.php";
    ?>
    <?php 
    include "ControlSidebar.php";
    ?>
    
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->

<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>
</body>
</html>
