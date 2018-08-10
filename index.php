<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        <?php include 'operation.php'; ?>
        
        <title>index</title>
    </head>
    <body>
        <!-- jumbotron -->
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1>Machine Learning in Computer Vision</h1>
                <p>Survey & Software & Dataset</p>
                <!-- button to open the modal -->
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#LM">
                    Learn more
                </button>
            </div>
        </div>
        
        <!-- modal -->
        <div class="modal fade" id="LM">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <!-- modal header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Survey & Software & Dataset</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- modal body -->
                    <div class="modal-body">
                        <?php
                        while ($row = mysqli_fetch_array($relatedRes)) {
                            echo '<p><a href="' . $row["link_address"] . '">' . $row["related_name"] . '</a></p>';
                        }
                        ?>
                    </div>
                    <!-- modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- form -->
        <form class="form-inline justify-content-center" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <div class="form-row">
                <div class="col-auto my-1">
                    <select class="custom-select mr-sm-2" name="selectedId">
                        <option selected>Choose...</option>
                        <?php
                        for ($i = 0; $i < $selectedCount; $i++) {
                            echo "<option value=\"", $selectedIds[$i], "\">", $selectedIds[$i], "</option>";
                        }
                        ?>
                    </select>
                </div>
                
                <div class="col-auto my-1">
                    <div class="input-group mb-2 mr-sm-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text">@</div>
                        </div>
                        <input type="text" class="form-control" name="studentName" placeholder="Student Name">
                    </div>
                </div>
                
                <div class="col-auto my-1">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>
        
        <?php
        echo $idErr . '<br>';
        echo $nameErr . '<br>';
        ?>
        
        <!-- table -->
        <div class="table-responsive-xl">
            <table id="mainTable" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Paper</th>
                        <th>Type</th>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    for ($i = 0; $i < $n; $i++) {
                        echo "<tr>";
                        echo "<td>", $i, "</td>";
                        echo "<td><a href=\"", $links[$i], "\">", $papers[$i], "</a></td>";
                        echo "<td>", $paperTypes[$i], "</td>";
                        echo "<td>", $students[$i], "</td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Paper</th>
                        <th>Type</th>
                        <th>Name</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </body>
</html>
