//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Função de União entre dois objetos:
union(){
    cube([2]);
    sphere(1);
}