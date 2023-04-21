//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Criação de uma roda utilizando cylindros repetitivamente no eixo z, e também o ratate_extrude para o eixo da roda.
raio=15;
module roda(){
  rotate_extrude(angle=360){//linha externa
      translate([raio,0,0])
      square(2);
  }
  translate([0,0,1])
  for(i=[0:45:360-1]){
      rotate([0,90,i])
      cylinder(raio,.5,.5);
    }
}

//roda();
difference(){
  roda();
    //Este for gera cilindros nos eixos da rota e como o for está dentro de uma difference ele demonstrará a roda sem esses cilíndros formando um efeito de parafusos.
  for(i=[0:30:359]){
      translate([(raio+1)*cos(i),(raio+1)*sin(i),0])
      cylinder(2,.5,.5);
  }
}