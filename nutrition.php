<?php
session_start();
include('dbcon.php');
include('functions.php');
check_session_id();

$query = "SELECT student_name,calories,fat,cholesterol,carbohydrates,protein,vitamin,created_at FROM students_table INNER JOIN (menu_table INNER JOIN order_table ON menu_table.menu_id = order_table.menu_id) ON students_table.student_id = order_table.student_id ORDER BY student_name ASC, created_at ASC;"
$result = mysqli_query($dbn,$query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Nutrition</title>
</head>

<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Nutrition
                            <a href="main.php" class="btn btn-outline-danger float-end">BACK</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tr class="mb-3">
                                <td>Student Name</td>
                                <td>Calories</td>
                                <td>fat</td>
                                <td>Cholesterol</td>
                                <td>Carbohydrates</td>
                                <td>Protein</td>
                                <td>Vitamin</td>
                                <td>Created_at</td>
                            </tr>
                            <tr>
                                <?php
                                while($row = mysqli_fetch_assoc($result))
                                {
                                ?>
                                <td><?php echo $row[''] ?></td>
                            </tr>
                            <?php
                            }
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>