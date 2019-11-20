<?php
   session_start();
    $matricula = $_POST["matricula"];

    if (!empty($_POST["matricula"]) && $matricula != "Matricula") {
        $_SESSION['matricula'] = $matricula;
        header("Location: ../solicitacao.php");
       }else{
           echo "<script>window.location='../consulta.php';</script>";
       }

    
?>