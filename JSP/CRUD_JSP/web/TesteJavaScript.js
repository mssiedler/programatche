function validacao (){
    if (document.formulario.nome.value===""){
        alert ("por favor, preencha o campo nome");
        document.formulario.nome.focus ();
        return false;
    }
    
    if (document.formulario.localizacao.value===""){
        alert ("Por favor, preencha o campo da localizacao");
        document.formulario.localizacao.focus ();
        return false;
    }
    
    if (document.formulario.hectares.value < 1 ){
        alert ("Por favor, Preencher o campo de hectares corretamente");
        document.formulario.hectares.focus ();
        return false;
    }
    if (document.formulario.data.value===""){
        alert ("por favor, Preencher o campo de data");
        document.formulario.data.focus();
        return false;
    }
    
     if (document.formulario.finan.value==="selecione"){
        alert ("Por favor, preencha o campo de sintuação financeira");
        document.formulario.finan.focus ("selecione");
        return false;
    }
}
function troca (){
    document.getElementById("imagemtopo").src = "cabra.jpg";
}
function troca2 (){
            document.getElementById("imagemtopo").src = "cabra.jpg";
            
            }