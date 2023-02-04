<?php
session_start();
include('dbcon.php');

if (isset($_POST['delete_student'])) {
    $student_id = mysqli_real_escape_string($con, $_POST['delete_student']);

    $query = "DELETE FROM students WHERE id='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if ($query_run) {
        $_SESSION['message'] = "Deleted Successfully";
        header("Location: main.php");
        exit(0);
    } else {
        $_SESSION['message'] = "Not Deleted";
        header("Location: main.php");
        exit(0);
    }
}

if (isset($_POST['update_student'])) {
    $student_id = mysqli_real_escape_string($con, $_POST['student_id']);

    $name = mysqli_real_escape_string($con, $_POST['name']);
    $alias = mysqli_real_escape_string($con, $_POST['alias']);
    $quirk = mysqli_real_escape_string($con, $_POST['quirk']);
    $course = mysqli_real_escape_string($con, $_POST['course']);

    $query = "UPDATE students SET name='$name', alias='$alias', quirk='$quirk', course='$course' WHERE id='$student_id' ";
    $query_run = mysqli_query($con, $query);

    if ($query_run) {
        $_SESSION['message'] = "Updated Successfully";
        header("Location: main.php");
        exit(0);
    } else {
        $_SESSION['message'] = "Not Updated";
        header("Location: main.php");
        exit(0);
    }
}

if (isset($_POST['save_student'])) {
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $alias = mysqli_real_escape_string($con, $_POST['alias']);
    $quirk = mysqli_real_escape_string($con, $_POST['quirk']);
    $course = mysqli_real_escape_string($con, $_POST['course']);

    $query = "INSERT INTO students (name,alias,quirk,course) VALUES ('$name','$alias','$quirk','$course')";

    $query_run = mysqli_query($con, $query);
    if ($query_run) {
        $_SESSION['message'] = "Created Successfully";
        header("Location: student-create.php");
        exit(0);
    } else {
        $_SESSION['message'] = "Not Created";
        header("Location: student-create.php");
        exit(0);
    }
}
