//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=100;//resolução do meu objeto.

//               Traduções de comandos para Pt-br:
//width -- largura
//heigth -- altura
//length -- comprimento
//inside diameter -- diâmetro interno
//tickness -- grossura
//wall -- espessura de parede
//radius -- raio

//Biblioteca: MCAD

//A biblioteca MCAD possui uma grande variedade de componentes de parafusos e porcas que você pode utilizar em seus projetos. Um exemplo de uso seria criar um cubo e adicionar parafusos e porcas em cada canto para fixá-lo.

//               1-Engrenagens:

use <MCAD/gears.scad>;// Comando para importar da biblioteca MCAD para o seu código OpenSCAD. O módulo "gears.scad" permite a criação de engrenagens personalizadas, onde é possível especificar o número de dentes, o diâmetro, o ângulo de pressão e outras propriedades.

//gear(20, 30);//Engrenagem de 20 dentes com um diâmetro de 30mm
//gear(20, 10, 5);//Criação de uma engrengem com 20 dentes, um diâmetro de 10 mm e uma largura de 5 mm.

//gear(number_of_teeth,circular_pitch=false, diametral_pitch=false, pressure_angle=20, clearance = 0);
//gear(20,20, 35, 30, 1);

//test_gears();//Cria quatro engrenagens com dentes retos, duas com 20 dentes e duas com 30 dentes, e posiciona-as de maneira que uma engrenagem menor se encaixe em uma engrenagem maior. As engrenagens são coloridas de forma a permitir a visualização das sobreposições e a interação entre os dentes das engrenagens.

//demo_3d_gears();//Cria dois conjuntos de engrenagens: um conjunto de engrenagens helicoidais e outro conjunto de engrenagens cônicas. As engrenagens helicoidais são dispostas em paralelo, enquanto as engrenagens cônicas são posicionadas em um ângulo de 90 graus em relação às engrenagens helicoidais. Quando as engrenagens são rotacionadas, elas se engrenam e transmitem torque entre si.

//test_involute_curve();//Cria um modelo 3D de uma curva involuta, que é a forma matemática da superfície de um dente de engrenagem. A curva é plotada em um plano XY, com as coordenadas X e Y representando as distâncias radiais e tangenciais da curva a partir de sua origem. .Além de criar uma janela de visualização 3D para exibir a curva involuta em vários tamanhos diferentes, dependendo dos parâmetros definidos. Esses parâmetros incluem o diâmetro do círculo base, o ângulo de pressão, o número de dentes, a altura do dente, entre outros.

//               2-Formas geométricas Regulares 2D

use <MCAD/regular_shapes.scad>//A biblioteca MCAD está sendo usada e que o arquivo regular_shapes.scad está sendo carregado para uso no programa. Essa biblioteca contém funções para desenhar formas geométricas regulares.

radius = 5 ;//Define o valor do raio que será usado para todos os polígonos.

//translate([00,0,0]) triangle(radius);//Desenha um triângulo com o raio definido de 5 e o coloca na posição (0,0,0) usando a função translate. O triângulo é desenhado usando a função triangle.
translate([10,0,0]) regular_polygon(5, radius);//desenha um pentágono com o raio definido de 5 e o coloca na posição (10,0,0) usando a função translate. O pentágono é desenhado usando a função pentagon.
translate([20,0,0]) hexagon(radius);//Desenha um hexágono com o raio definido de 5 e o coloca na posição (20,0,0) usando a função translate. O hexágono é desenhado usando a função hexagon.
translate([30,0,0]) heptagon(radius);//Desenha um heptágono com o raio definido de 5 e o coloca na posição (30,0,0) usando a função translate. O heptágono é desenhado usando a função heptagon.
//translate([40,0,0]) octagon(radius);//Desenha um octógono com o raio definido de 5 e o coloca na posição (40,0,0) usando a função translate. O octógono é desenhado usando a função octagon.
//translate([50,0,0]) nonagon(radius);//Desenha um nonágono com o raio definido de 5 e o coloca na posição (50,0,0) usando a função translate. O nonágono é desenhado usando a função nonagon.
//translate([60,0,0]) decagon(radius);//Desenha um decágono com o raio definido de 5 e o coloca na posição (60,0,0) usando a função translate. O decágono é desenhado usando a função decagon.
//translate([70,0,0]) hendecagon(radius);//Desenha um hendecágono com o raio definido de 5 e o coloca na posição (70,0,0) usando a função translate. O hendecágono é desenhado usando a função hendecagon.
//translate([80,0,0]) dodecagon(radius);//Desenha um dodecágono com o raio definido de 5 e o coloca na posição (80,0,0) usando a função translate. O dodecágono é desenhado usando a função dodecagon.

//ring(inside_diameter, thickness)
//ring(10, 5);//Cria um anel, com um diâmetro interno de 10 unidades e uma grossura de 5 unidades.

//ellipse(width, height)
//ellipse(30, 15);//Criaria uma elipse com um eixo maior(largura) de 30 unidades e um eixo menor(altura) de 15 unidades.

//egg_outline(width, length)
//egg_outline(10, 15);//Cria um contorno de ovo com um altura máxima de 10 unidades e uma comprimento máximo de 15 unidades.

//               3-Formas geométricas Regulares 3D

//cone(height, radius, center = false)
//cone(20, 10);//Cria um cone 3D com um altura de 20 unidades e um raio de 10 unidades na base.

//oval_prism(height, rx, ry, center = false)
//oval_prism(20, 15, 5);//Cria um prisma oval 3D com um altura de 20 unidades, um comprimento(raio de x) de 15 unidades e uma largura(raio de y) de 5 unidades.

//oval_tube(height, rx, ry, wall, center = false)
//oval_tube(20, 10, 5, 1);//Cria um tubo oval 3D com um altura máxima de 20 unidades, uma comprimento(raio de x) máximo de 10 unidades, uma largura máxima(raio de y) de 5 unidades e uma espessura de parede de 1 unidade.

//cylinder_tube(height, radius, wall, center = false)
//cylinder_tube(20, 10, 1);//Cria um tubo cilíndrico 3D com um altura máxima de 20 unidades, um raio máximo de 10 unidades e uma espessura de parede de 1 unidade.

//triangle_prism(height,radius)
//triangle_prism(5,10);//Cria um prisma triangular 3D com uma altura máxima de 20 unidades e um raio máximo de 10 unidades.

//triangle_tube(height,radius,wall)
//triangle_tube(20,10, 1);//Cria um tubo triangular 3D com uma altura máximo de 20 unidades, um raio máximo de 10 unidades e uma espessura de parede de 1 unidade.

//pentagon_prism(height,radius)
//pentagon_prism(10,5);//Cria um prisma pentagonal 3D com uma altura máxima de 10 unidades e um raio de 5 unidades.

//pentagon_tube(height,radius,wall)
//pentagon_tube(15,5,1);//Cria um tubo pentagonal 3D com uma altura máxima de 15 unidades, um raio de 5 unidades e uma espessura de parede de 1 unidade.

//Outros comandos semelhantes:
//hexagon_prism(height,radius);
//hexagon_tube(height,radius,wall);
//heptagon_prism(height,radius);
//heptagon_tube(height,radius,wall);
//octagon_prism(height,radius);
//octagon_tube(height,radius,wall);
//nonagon_prism(height,radius);
//decagon_prism(height,radius);
//hendecagon_prism(height,radius);
//dodecagon_prism(height,radius);

//torus(outerRadius, innerRadius);
//torus(30, 15);//Cria um toroide 3D com um raio maior(raio externo) de 30 unidades e um raio menor(raio interno) de 15 unidades.

//torus2(r1, r2)
//torus2(30, 5);//Cria um objeto 3D semelhante a um toroide com um raio maior de 30 unidades e um raio menor de 5 unidades. 

//oval_torus(inner_radius, thickness=[0, 0])
//oval_torus(20, thickness=[4, 8]);//Cria um toroide 3D com um raio externo de 20 unidades e um perfil ovalado, onde a largura da seção transversal varia de acordo com o valor do parâmetro "thickness". A seção transversal menor tera uma largura de 4 unidades e a seção transversal maior teria uma altura de 8 unidades.

//triangle_pyramid(radius)
//triangle_pyramid(20);//Cria uma pirâmide triangular 3D com um lado da base de 20 unidades. O parâmetro 20 define o comprimento de um lado da base da pirâmide, que é um triângulo equilátero, ou seja, todos os lados da base têm a mesma medida. Assim, a base da pirâmide teria três lados iguais de 20 unidades de comprimento.

//square_pyramid(base_x, base_y, height)
//square_pyramid(10, 20, 30);//Cria uma pirâmide quadrangular 3D com uma base(base x) de 10 unidades de lado e uma base(base y) de 20 unidades e a altura de 30 unidades.

//               4-Engrenagens involutas 3D parametrizadas.

//use <MCAD/involute_gears.scad>//Importa o módulo involute_gears.scad da biblioteca MCAD. Este módulo fornece funções para gerar engrenagens involutas 3D parametrizadas.

//bevel_gear_pair (
//    gear1_teeth = 27, 
//    gear2_teeth = 6, 
//    axis_angle = 90, 
//    outside_circular_pitch=150);//Cria um par de engrenagens cônicas com dentes em forma de involuta. Onde: gear1_teeth: o número de dentes da primeira engrenagem. gear2_teeth: o número de dentes da segunda engrenagem. axis_angle: o ângulo de inclinação dos eixos das engrenagens em relação ao plano horizontal. outside_circular_pitch: o passo circular externo das engrenagens, que é a distância entre os pontos correspondentes em dois dentes adjacentes em um círculo imaginário que circunscreve a engrenagem.

//bevel_gear (
//    number_of_teeth=11, 
//    cone_distance=100, 
//    face_width=20, 
//    outside_circular_pitch=200, 
//    pressure_angle=30,
//    clearance = 0.2, 
//    bore_diameter=5,
//    gear_thickness = 15, 
//    backlash = 0, 
//    involute_facets=0, 
//    finish = -1);//O comando bevel_gear é usado para criar um conjunto de engrenagens cônicas. Onde: 
    //number_of_teeth: número de dentes na engrenagem. 
    //cone_distance: distância entre os eixos das duas engrenagens cônicas. 
    //face_width: largura da superfície de contato entre as engrenagens.
    //outside_circular_pitch: distância entre o centro de um dente e o centro do dente adjacente, medido na circunferência externa da engrenagem. 
    //pressure_angle: ângulo da linha de pressão, que é o ângulo entre a tangente à curva de involuta no ponto de contato e uma linha perpendicular à linha de centro das engrenagens. 
    //clearance: folga entre as engrenagens para evitar interferência. 
    //bore_diameter: diâmetro do furo central da engrenagem. 
    //gear_thickness: espessura da engrenagem.
    //backlash: folga entre as engrenagens para garantir que haja espaço suficiente para evitar interferência durante a operação.
    //involute_facets: número de facetas usadas para desenhar a curva de involuta. Quanto mais facetas, mais suave será a curva, mas o desempenho do OpenSCAD pode ser afetado.
    //finish: controle de acabamento. Quanto maior o valor, mais suave será a superfície da engrenagem, mas o desempenho do OpenSCAD pode ser afetado. Um valor de -1 indica que o valor padrão deve ser usado.
    
//module gear (
//    number_of_teeth=15,
//    circular_pitch=false, diametral_pitch=false,
//    pressure_angle=28,
//    clearance = 0.2,
//    gear_thickness=5,
//    rim_thickness=8,
//    rim_width=5,
//    hub_thickness=10,
//    hub_diameter=15,
//    bore_diameter=5,
//    circles=0,
//    backlash=0,
//    twist=0,
//    involute_facets=0,
//    flat=false);//Ps: Não gera nada pois é referente ao comando da biblioteca em si.

//gear(number_of_teeth=20, circular_pitch=200, flat=true);//Cria uma engrenagem cilíndrica com dentes retos. com 20 dentes na engrenagem, 200 de distância entre o centro de um dente e o centro do dente adjacente, e se for verdadeiro, cria uma engrenagem com fundo plano, em vez de um perfil de dente arredondado.

//               Testes de Engrenagens

//test_gears();//Cria um par de engrenagens e testá-las para verificar se elas se encaixam corretamente. Esse comando cria duas engrenagens de teste com um certo número de dentes e outros parâmetros de configuração predefinidos. Essas engrenagens são então montadas em um eixo comum e rotacionadas para verificar o encaixe correto dos dentes. O teste também verifica se os dentes estão dentro das tolerâncias especificadas e se a relação de transmissão das engrenagens é a desejada.

//test_meshing_double_helix();//Ao chamar esse comando, duas engrenagens de hélice dupla são geradas com base em certos parâmetros de configuração predefinidos. As engrenagens são então montadas em um eixo comum e rotacionadas para verificar o encaixe correto dos dentes. O teste também verifica se os dentes estão dentro das tolerâncias especificadas e se a relação de transmissão das engrenagens é a desejada. 

//test_bevel_gear();//Ao chamar esse comando, duas engrenagens cônicas são geradas com base em certos parâmetros de configuração predefinidos. As engrenagens são então montadas em eixos que se cruzam e rotacionadas para verificar o encaixe correto dos dentes. O teste também verifica se os dentes estão dentro das tolerâncias especificadas e se a relação de transmissão das engrenagens é a desejada.

//test_bevel_gear_pair();//Gera e testa um par de engrenagens cônicas. Ao chamar esse comando, duas engrenagens cônicas são geradas com base em certos parâmetros de configuração predefinidos e são montadas em eixos que se cruzam e rotacionadas para verificar o encaixe correto dos dentes.

//test_backlash ();//Gera duas engrenagens com um determinado número de dentes, pressão e tamanho, mas com diferentes valores de jogo. As engrenagens são montadas e rotacionadas para verificar o impacto do jogo nos movimentos. Esse teste é útil para entender como o espaço livre (jogo) entre os dentes das engrenagens afeta seu desempenho e para ajustar a configuração de engrenagens em projetos onde a precisão é importante.

use <MCAD/teardrop.scad>//Serve para importar a biblioteca de modelos de gotas em formato de lágrima (teardrop) do MCAD para ser usada no seu projeto. Isso permite que você crie modelos complexos que incluem gotas em formato de lágrima sem ter que escrever todo o código do zero.

//O comando difference() é usado para criar uma forma subtraindo uma forma da outra. Neste caso, três formas teardrop são subtraídas de um cubo.
//difference() {
//    cube([5, 60, 40], center=true);
    //É um cubo com dimensões [5, 60, 40], centrado na origem [0, 0, 0].
//    translate([0, -15, 0]) teardrop(radius=6, length=20, angle=90);
    //os objetos teardrop (forma de lágrima) em relação à origem. O primeiro teardrop é movido -15 unidades no eixo y.
//    translate([0,   0, 0]) teardrop(radius=5, length=20, angle=60);
    //O segundo teardrop é mantido na origem.
//    translate([0,  15, 0]) teardrop(radius=4, length=20, angle=45);
    //O terceiro teardrop é movido 15 unidades no eixo y.
 //}//Os objetos teardrop são criados com o comando teardrop(), que aceita três parâmetros: o raio da ponta da lágrima (radius), o comprimento da lágrima (length) e o ângulo da ponta da lágrima (angle). Os três objetos teardrop têm diferentes valores de raio e ângulo de ponta, criando assim uma progressão de tamanhos de lágrimas.
 
 include <MCAD/stepper.scad>//Permite que você use as funções, módulos e variáveis definidos no arquivo "stepper.scad" em seu próprio código. Utilizando-se para criar modelos 3D de motores de passo com base em especificações comuns de motores de passo.
 
//Esse código gera uma série de motores de passo em diferentes tamanhos e com diferentes configurações de eixos.
//for (size = [NemaShort, NemaMedium, NemaLong]) {  
//   translate([50, size*100,0])  motor(Nema34, size, dualAxis=false);//A variável "size" é um array que contém os tamanhos dos motores de passo que serão criados. Para cada valor em "size", o comando "translate" move o cursor para a posição x = 50, y = size*100 e z = 0.
//   translate([150,size*100,0])  motor(Nema23, size, dualAxis=false);
//   translate([250,size*100,0])  motor(Nema17, size, dualAxis=true);
//   translate([350,size*100,0])  motor(Nema14, size, dualAxis=true);
//   translate([450,size*100,0])  motor(Nema11, size, dualAxis=true);
//   translate([550,size*100,0])  motor(Nema08, size, dualAxis=true);
 //}
 //O loop for é usado para iterar sobre uma lista de tamanhos de motores NemaShort, NemaMedium e NemaLong, e para cada tamanho de motor, o código usa o comando translate para criar um conjunto de motores de passo, especificados usando a função motor. Cada motor é criado em uma posição diferente ao longo do eixo x usando a função translate. Ele é chamado com os parâmetros correspondentes ao modelo do motor e à configuração de eixo duplo ou único (dualAxis=false ou true).
 //% translate([0, 150, 0.01]) cube([600, 200, 0.1]);//Cria um cubo de 600mm de largura, 200mm de altura e 0,1mm de profundidade, deslocado 150mm no eixo y e 0,01mm no eixo z. Esse cubo pode ser usado como uma base para os motores de passo ou para outros objetos criados no código.
 
use <MCAD/nuts_and_bolts.scad>//Importa o módulo nuts_and_bolts da biblioteca MCAD do OpenSCAD, que contém funções para gerar modelos de porcas e parafusos com diferentes tamanhos e roscas.
include <MCAD/units.scad>//Importa o módulo units da mesma biblioteca MCAD, que define funções e variáveis para trabalhar com unidades de medida. Ele define as constantes inch, mm, cm, m e outras unidades de comprimento, bem como funções para conversão entre unidades, como inch_to_mm, mm_to_inch, cm_to_mm, mm_to_cm e assim por diante.

//M3 is an alias for 3. It is defined in units.scad

// cap screw(parafuso de tampa)
//boltHole(M3, length=10);// Cria um furo para um parafuso M3 com um comprimento de 10mm, na posição atual do modelo.

// clearance hole for cap screw(orifício de folga para o parafuso de fixação)
//%translate([0, 7, 0])
//  boltHole(M3, length=10, tolerance=0.3);//Cria um furo para um parafuso M3 com um comprimento de 10mm e uma tolerância de 0.3mm em relação à posição atual do modelo, deslocado 7mm no eixo Y.
  
// nut(porca)
//translate([7, 0, 0]) 
//  nutHole(M3, tolerance=0.0);//Cria uma abertura para uma porca M3 com uma tolerância de 0.0mm, deslocada 7mm no eixo X em relação à posição atual do modelo.
  
// nut hole(buraco de porca)
//%translate([7, 7, 0]) 
//  nutHole(M3, tolerance=0.3);//Cria uma abertura para uma porca M3 com uma tolerância de 0.3mm, deslocada 7mm em ambos os eixos X e Y em relação à posição atual do modelo.
  
// bolt(parafuso)
//translate([14, 0, 0]){
//   boltHole(M3, length=10);
//   rotate([180,0,0])nutHole(M3, tolerance=0.0);}// Cria um furo para um parafuso M3 com um comprimento de 10mm e uma abertura para uma porca M3 com uma tolerância de 0.0mm, deslocada 14mm no eixo X em relação à posição atual do modelo. A abertura para a porca é rotacionada em 180 graus em relação ao eixo X para permitir que a porca seja inserida.