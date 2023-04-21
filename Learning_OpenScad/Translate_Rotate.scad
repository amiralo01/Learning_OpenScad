//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Transladando enquanto rotaciona:
translate([0,$t*4,0])
rotate([0,$t*90,0])
cube([3,2,1]);