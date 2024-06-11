<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: /login.php');
    exit();
}
$name = $_SESSION['name'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello <?php echo $_SESSION['name']; ?></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
        body {
            text-align: center;
            background-color: #f8f9fa;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Добро пожаловать, <?php echo $_SESSION['name']; ?>!</h1>
        </div>
        <div class="col-md-12">
            <p>
                <a href="add.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Add Your Blog</a>
            </p>
            <p>
                <a href="logout.php" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Log Out</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>