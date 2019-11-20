<?php
	session_start();
	include_once("../conexao.php");
    	$solicitaReemb = filter_input(INPUT_POST, 'procedimento');

		if (!empty($_POST["procedimento"])) {
			$atualizaProcedimento = "UPDATE procedimento SET proc_pago = 1 WHERE cd_procedimento LIKE $solicitaReemb";
			$resultado_solicitacao = mysqli_query($conn, $atualizaProcedimento);
			$_SESSION['procedimento'] = $solicitaReemb;
			//echo "<script language='JavaScript' charset='utf-8'>alert('REGISTRO GRAVADO COM SUCESSO!');</script>";
			//echo "<meta HTTP-EQUIV='refresh' CONTENT='0; URL=../solicitacao.php'>";
			echo "<script>window.location='../reembolso.php';</script>";
			//header("Location: solicitacao.php");
			//echo "<script>alert('Reembolso comcuído');</script>";
			
		}else{
			echo "<script>window.location='../solicitacao.php';</script>";
		}
?>