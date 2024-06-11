<?php
session_start();
require 'db.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: /login.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST['title'];
    $body = $_POST['body'];
    $userid = $_SESSION['user_id'];

    $sql = "INSERT INTO blog (userid, title, body) VALUES (:userid, :title, :body)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['userid' => $userid, 'title' => $title, 'body' => $body]);

}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Добавить новость</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            text-align: center;
        }
        form {
            display: inline-block;
            text-align: left;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #6528e0;
            border-radius: 5px;
            width: 50%;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: .375rem .75rem;
            margin: 5px 0 20px 0;
            display: inline-block;
            border: 1px solid #6528e0;
            border-radius: .25rem;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: .375rem .75rem;
            margin: 8px 0;
            border: none;
            border-radius: .25rem;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #6528e0;
        }
        .alert-success {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 24px;
            background-color: #6528e0;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>
<h1>Добавить новость</h1>
<form method="POST" action="add.php">
    <label for="title">Заголовок:</label><br>
    <input type="text" id="title" name="title" required><br><br>

    <label for="body">Текст новости:</label><br>
    <textarea id="body" name="body" rows="4" cols="50" required></textarea><br><br>

    <input type="submit" class="btn btn-primary" value="Добавить">
</form>

<div class="alert alert-success" role="alert" id="successMessage" style="display:none;">
    Новость успешно добавлена!
</div>

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        event.preventDefault();
        var successMessage = document.getElementById('successMessage');
        successMessage.style.opacity = 0;
        successMessage.style.display = 'block';
        (function fade() {
            var val = parseFloat(successMessage.style.opacity);
            if (!((val += 0.1) > 1)) {
                successMessage.style.opacity = val;
                requestAnimationFrame(fade);
            }
        })();
        setTimeout(function(){
            (function fade() {
                if ((successMessage.style.opacity -= 0.1) < 0) {
                    successMessage.style.display = 'none';
                } else {
                    requestAnimationFrame(fade);
                }
            })();
        }, 3000);
    });
</script>