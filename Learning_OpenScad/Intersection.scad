//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Função de Interseção entre dois objetos:
intersection(){
    cube([2]);
    sphere(1);
}