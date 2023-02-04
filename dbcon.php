<?php

$con = mysqli_connect("localhost", "root", "", "gs");

if (!$con) {
    die('Connection Failed' . mysqli_connect_error());
}
