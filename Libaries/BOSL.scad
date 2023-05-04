//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do objeto.

//Biblioteca: BOSL

//Está biblioteca fornece uma coleção de módulos pré-construídos para ajudar na criação de modelos 3D complexos. Esses módulos incluem funções para a criação de padrões de grade, superfícies curvas, perfis de extrusão personalizados e muito mais.

//            Módulos para transformações geométricas

include <BOSL/transforms.scad>//Inclui o arquivo transforms.scad da biblioteca BOSL no seu código. O arquivo transforms.scad contém uma série de módulos para transformações geométricas, como rotações, translações e escalas.

up(5)cube(6);// Equivalente a translate([0,0,5]) = Mover o objeto atual 5 unidades para cima ao longo do eixo Z

//xrot(30,cp=[0,10,20]);// Equivalente a translate([0,10,20]) rotate([30,0,0]) translate([0,-10,-20]) = Aplica uma rotação de 30 graus em torno do eixo X a um objeto 3D e define o centro de rotação em [0,10,20] (coordenadas XYZ).

xspread(20,n=3);//Equivalente a for (dx=[-20,0,20]) translate([dx,0,0]) = Distribui cópias de um objeto 3D ao longo do eixo X com um espaçamento de 20 unidades entre cada cópia. O parâmetro n especifica o número de cópias a serem criadas.

//zring(n=6,r=20);//ou (zr=[0:5])(zr é um vetor que contém uma sequência de valores numéricos em incrementos de 1, começando em 0 e terminando em 5, tendo o operador ':' usado para especificar o intervalo de valores, onde o primeiro número antes do : é o valor inicial e o segundo número após o : é o valor final) Equivalente a rotate([0,0,zr*60]) translate([20,0,0]) = Cria um anel 3D com n lados (padrão = 6) e raio r (padrão = 20) ao longo do eixo Z. Isso significa que o anel será criado no plano XY e se estenderá ao longo do eixo Z.

//skew_xy(xa=30,ya=45);//Equivalente a multmatrix([[1,0,tan(30),0],[0,1,tan(45),0],[0,0,1,0],[0,0,0,1]]) = Distorce um objeto 3D ao longo dos eixos X e Y usando ângulos de inclinação xa e ya. Isso significa que o objeto será deformado em relação à sua forma original, criando um efeito de perspectiva.

//            Formas geométricas

include<BOSL/shapes.scad>//Inclui o módulo "shapes" da biblioteca BOSL, fornece uma série de funções para criar formas geométricas comuns, como caixas, esferas, cilindros, cones, toróides, poliedros, entre outros. Além disso, o módulo também fornece funções para criar formas mais complexas, como engrenagens, curvas de Bézier e superfícies NURBS.

//upcube([10,20,30]);//Equivalente a translate([0,0,15]) cube([10,20,30], center=true);

//prismoid([30,40],[20,30],h=10);//Equivalente a hull() {translate([0,0,0.005]) cube([30,40,0.01], center=true); translate([0,0,9.995]) cube([20,30,0.01],center=true);} = Cria um sólido prismóide com uma base de tamanho [30,40], uma seção transversal superior de tamanho [20,30], e altura h igual a 10 unidades. O resultado é uma forma trapezoidal alongada que é mais larga na base do que no topo.

//xcyl(l=20,d=4);//Equivale a rotate([0,90,0]) cylinder(h=20, d=4, center=true); = Cria um cilindro com o eixo ao longo do eixo X. O comprimento do cilindro é l igual a 20 unidades, e o diâmetro é d igual a 4 unidades. O resultado é um cilindro esticado ao longo do eixo X.

//cyl(l=100, d=40, fillet=5);// Equivale a translate([0,0,50]) minkowski() {cylinder(h=90, d=30, center=true); sphere(r=5);} = cria um cilindro ao longo do eixo Z com comprimento l igual a 100 unidades, diâmetro d igual a 40 unidades e um raio de filete fillet igual a 5 unidades. O resultado é um cilindro arredondado nas extremidades.

//            Máscaras e cortes

include<BOSL/masks.scad>//Inclui o módulo "masks" da biblioteca BOSL, fornece uma série de funções para criar máscaras e cortes em formas geométricas em 3D. Com essas funções, é possível criar formas personalizadas para serem usadas como máscaras em outras formas geométricas, bem como cortar formas geométricas maiores com essas máscaras.

//O que é chanfro?
//Rs: É uma superfície plana que é cortada em um ângulo em uma borda ou canto de uma peça. É criado removendo uma pequena porção de material da borda ou da superfície da peça para formar um ângulo

//chamfer_mask_z(l=20,chamfer=5);//Equivale a rotate(45) cube([5*sqrt(2), 5*sqrt(2), 20], center=true); = Cria uma máscara em forma de chanfro ao longo do eixo Z. O comprimento da máscara é l igual a 20 unidades, e o tamanho do chanfro é chamfer igual a 5 unidades.

//O que é filete? 
//Rs: Um filete é uma transição suave e arredondada entre duas superfícies que se encontram em um ângulo agudo, como em um canto ou aresta.

//fillet_hole_mask(r=30,fillet=5);//Equivale a difference() {cube([70,70,10], center=true); translate([0,0,-5]) rotate_extrude(convexity=4) translate([30,0,0]) circle(r=5);} = Este comando cria uma máscara em forma de furo circular com um raio r igual a 30 unidades e um raio de filete fillet igual a 5 unidades. A máscara resultante é um sólido que pode ser usado para cortar formas geométricas em 3D com um furo circular com filete personalizado.

//angle_pie_mask(ang=30, d=100, l=20);// Equivale a :
// ang = 30;
// d = 100;
// h = 20;  
// base = [d/2, 0, d/2, h, -d/2, h, -d/2, 0, d/2, 0];
// forma = rotate([0, ang, 0]) base;
// forma_3d = linear_extrude(height=h) forma;
// render(forma_3d);
// = Cria uma máscara em forma de "fatia de pizza", onde:
//ang: é o ângulo da "fatia de pizza" em graus. Por exemplo, se ang for 30, a "fatia" terá um ângulo de 30 graus.
//d: é o diâmetro da "fatia de pizza" na base. A "fatia" será uma forma trapezoidal com uma base circular de diâmetro d.
//l: é a altura da "fatia de pizza". A altura é medida ao longo do eixo Z.

//            Parafusos e porcas

include <BOSL/constants.scad>//Inclui um arquivo de biblioteca chamado "constants.scad" do pacote de bibliotecas BOSL.
use <BOSL/metric_screws.scad>//Inclui outro arquivo de biblioteca chamado "metric_screws.scad" do pacote de bibliotecas BOSL, que contém modelos 3D de parafusos métricos padronizados.

//screw(screwsize=3,screwlen=10,headsize=6,headlen=3,countersunk=true);//

//screw(screwsize=3,screwlen=10,headsize=6,headlen=3, align="base");//

//Tipos de cabeças de parafusos://CUIDADO Lentidão no Sistema.

//metric_bolt(headtype="pan", size=10, l=15, details=true, phillips="#2");
//metric_bolt(headtype="button", size=10, l=15, details=true, phillips="#2");
//metric_bolt(headtype="round", size=10, l=15, details=true, phillips="#2");
//metric_bolt(headtype="socket", size=10, l=15, details=true);
//metric_bolt(headtype="hex", size=10, l=15, details=true, phillips="#2");
//metric_bolt(headtype="countersunk", size=10, l=15, details=true, phillips="#2");
//metric_bolt(headtype="oval", size=10, l=15, details=true, phillips="#2");

//Parafuso:

//metric_bolt(size=10, l=15, pitch=0);//gera um modelo 3D de um parafuso métrico, com base nos argumentos fornecidos. Os argumentos para a função são os seguintes:
//size: especifica o diâmetro nominal do parafuso, em milímetros (por exemplo, 4, 6, 8, 10, etc.).
//l: especifica o comprimento do parafuso, em milímetros.
//pitch: especifica o passo da rosca do parafuso, em milímetros. Se o valor for igual a zero, será utilizado o valor padrão para o passo da rosca do tamanho do parafuso.

//metric_bolt(size=10, l=15);//Sem Detalhes, Exceto Tópicos.

//metric_bolt(size=10, l=15, details=true, $fn=32);//Demonstra mais detalhes do parafuso.

//Flange:
//metric_bolt(size=10, l=15, flange=5);//

//Haste
//metric_bolt(size=10, l=25, shank=10);//

//Porcas:

//metric_nut(size=10, hole=false);//Sem detalhes, sem furo. Útil para uma máscara

//metric_nut(size=10, hole=true);//Furo, Sem Roscas

//metric_nut(size=10, hole=true, pitch=1.5);//Com roscas e sem detalhes

//metric_nut(size=10, hole=true, pitch=1.5, details=true);//Com detalhes

//metric_nut(size=10, hole=true, pitch=1.5, details=true, center=true);//Centralizado

//metric_nut(size=10, hole=true, pitch=1.5, flange=3, details=true, center = true);//Com flange