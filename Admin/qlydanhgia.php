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
                <small>Đánh giá</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Quản lý Đánh giá</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Tên User</th>
                                        <th>Email</th>
                                        <th>Nội dung</th>
                                    </tr>
                                </thead>
                                <tbody>  
                                <?php
                                    require '../inc/myconnect.php';
                                    $sql = "SELECT tenUser, email, noidung FROM danhgia ORDER BY tenUser";
                                    $result = $conn->query($sql); 
                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while($row = $result->fetch_assoc()) {
                                ?>       
                                    <tr>           
                                        <td><?php echo $row["tenUser"] ?></td>
                                        <td><?php echo $row["email"] ?></td>
                                        <td><?php echo $row["noidung"] ?></td>        
                                    </tr>
                                <?php
                                        }
                                    }
                                ?>
                                </tbody>                   
                            </table>
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
