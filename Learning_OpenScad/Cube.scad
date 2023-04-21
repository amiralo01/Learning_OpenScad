//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Criação de um cubo:
//cube([2]);//Cubo cujo os lados são 2 milímetros.
//cube([3,2,1]);//Para criação de um cubo com lados diferentes, se coloca entre colchetes([]) os valores de X, Y e Z. Ou seja, o 3,2,1 do comando.
cube([3,2,1],center=true);//Da mesma forma se eu quiser mudar a origem do sistema do meu objeto para o centro dele eu adiciono o comando "center=true".