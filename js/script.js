function validarFormulario(){
	var myform = document.forms['formulario'] || document.formulario;
	if(myform.matricula.value == "Matricula" || myform.matricula.selectedIndex == 0){
		alert('Preencha a Matrícula');
	}else{
		myform.submit();
	}
}

function validarSolicitacao(){
	if($("#procedimento").prop("checked")){
		myform.submit();
	}else{
		alert('Selecione ao menos um procedimento para solicitar o reembolso');
	}
}