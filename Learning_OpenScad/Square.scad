//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Objeto "square" se utiliza as dimensões de x e y, não tendo altura ou profundidade em z. Sendo um objeto 2D.
//Comando para instrusar em um ângulo de 180º
rotate_extrude(angle=$t*180){//linha externa
    translate([2,0,0])
    square([5,10]);
}