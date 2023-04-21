//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Criação de um translate:
//translate(0,4,0)cube([3,2,1]);//Transladando o cubo através do Y(4).]
//O openScad é capaz de demonstrar animações.
translate([0,$t*4,0])cube([3,2,1]);// ->view ->animate.