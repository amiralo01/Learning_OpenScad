//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

rotate_extrude(angle=$t*180){//linha externa
    translate([20,0,0])
  circle(d=5);
}