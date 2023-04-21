//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Utilizando modulos:
//Este que trabalha com parâmetros de entrada e realiza ua ação como saída. Serve mais para uma criação que será várias vezes utilizada.
//Escreve o comando o module e o nome que você quer atribuir. Além de incluir oque o modulo gera, no caso deste exemplo um texto.
module my_module(){
    text("Faz o L", size=tamanho);
}
//O texto só aparecerá quando retornar o módulo.
my_module(7);