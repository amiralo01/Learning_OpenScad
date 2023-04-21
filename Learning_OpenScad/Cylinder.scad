//Test do OpenScad
//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do meu objeto.

//Criação de um cilíndro:
//h = altura, r1=raio inferior, r2=raio superior
//cylinder(h=3, r1=1, r2=3);
//cylinder(h=3, r=2);//Está é outra opção que no caso o r para o raio inferior será o mesmo do superior.
//cylinder(h=3, d=4);//Pode se também configurar o cilíndro pelo diâmetro.
cylinder(h=3, d=4, center = true);//O padrão do OpenScad é colocar a origem do sistema de cordenadas na base da figura, para colocar no centro da imagem o sistema de cordenadas utiliza-se esse comando do "center=true", o padrão é false.