//Crtl+D = Comentar.
//Ctrl+shift+D = Descomentar.
$fn=200;//resolução do objeto.

//Biblioteca: BOSL2

//BOSL2 é uma versão mais atualizada e aprimorada da biblioteca BOSL original, que foi criada pelo usuário do OpenSCAD, emanon. O BOSL2 inclui mais de 200 módulos diferentes para criar uma variedade ainda maior de modelos 3D complexos, além de uma documentação mais abrangente.

include <BOSL2/std.scad>//Inclui o arquivo "std.scad" da biblioteca BOSL2 em seu código OpenSCAD.
//           Para uma melhor compreensão
//Esquerda : Em direção a X–
//Direita : Em direção a X+
//Frente / Frente : Em direção a Y–
//Atrás / Atrás : Em direção a Y+
//Inferior / Abaixo / Abaixo : Em direção a Z–
//Cima / Cima / Acima : Em direção a Z+

//Tutoriais do Shape3D("std.cad")

//            Utilizando Cubos

//cube(100);//Criação de um cubo
//cube(100, center = True)//Criação de um cubo de centralizado.
//cube([50,40,20], center=true);//Criação de um cubo centralizado utilzando x(largura),y(profundidade) e z(Altura).

//Parâmetro "anchor":
//O parâmetro "anchor" da função "cube" permite que você especifique como o cubo é posicionado em relação ao sistema de coordenadas do OpenSCAD. Existem várias opções possíveis para esse parâmetro, incluindo "CENTER", "BOTTOM", "TOP", "LEFT", "RIGHT", "FRONT" e "BACK", bem como várias combinações dessas opções usando os operadores "+" e "-".

//cube([50,40,20], anchor=BOTTOM);//Posiciona de forma que sua face inferior (BOTTOM) esteja no plano XY. Isso é feito usando o parâmetro "anchor" da função "cube". O valor padrão do parâmetro "anchor" é "CENTER", que posiciona o cubo de modo que seu centro esteja no ponto (0,0,0) do espaço.

//cube([50,40,20], anchor=TOP+BACK);//Posiciona o cubo de forma que sua face superior (TOP) esteja no plano XY e sua face traseira (BACK) esteja no plano YZ. 

//cube([50,40,20], anchor=TOP+FRONT+LEFT);//Posiciona de forma que sua face superior (TOP) esteja no plano XY, sua face frontal (FRONT) esteja no plano XZ e sua face esquerda (LEFT) esteja no plano YZ.
//cube([50,40,20], anchor=TOP+FRONT+RIGHT);//Mesma coisa mas para a direita

//Parâmetro "spin":
//Usado para criar uma rotação do objeto em torno de um eixo específico. A rotação é definida em graus e ocorre no plano definido pelo eixo e pela face do objeto especificada pelo parâmetro "anchor".

//cube([50,40,20], anchor=FRONT, spin=30);//O cubo será rotacionado em um ângulo de 30 graus sobre o eixo z.

//cube([50,40,20], anchor=FRONT, spin=[15,0,30]);//é rotacionado em 15 graus em torno do eixo X e em 30 graus em torno do eixo Z, mantendo o eixo Y sem rotação (spin=[15,0,30]).

//Parâmetro "orient":
//Usado para definir a orientação de um objeto em relação a outro. Isso é útil quando você precisa posicionar um objeto em uma posição específica em relação a outro objeto em seu modelo. O parâmetro orient é definido por um vetor 3D [x, y, z] que representa a orientação do objeto. Cada elemento do vetor representa um eixo de orientação, e seu valor define o alinhamento do objeto ao longo desse eixo. O valor 1 alinha o objeto com o eixo correspondente, enquanto o valor -1 alinha o objeto na direção oposta. Por padrão, o parâmetro orient é definido como [1, 0, 0], o que significa que o objeto é alinhado com o eixo X.
//O parâmetro orient é definido por uma combinação de direções, que podem ser UP, DOWN, LEFT, RIGHT, FORWARD e BACK. Cada direção representa um eixo do sistema de coordenadas local do objeto.

//cube([50,40,20], orient=UP+BACK+RIGHT);//O objeto cube é rotacionado para que sua face superior (UP), face traseira (BACK) e face direita (RIGHT) fiquem alinhadas com os eixos do sistema de coordenadas global.Isso significa que o objeto será orientado com a face superior apontando para o eixo Y positivo, a face traseira apontando para o eixo Z negativo e a face direita apontando para o eixo X positivo.

//Cuboid: O BOSL2 fornece um cuboid()módulo que se expande em cube(), fornecendo arredondamento e chanfro de arestas. Você pode usá-lo de forma semelhante a cube(), exceto que cuboid()centraliza por padrão.Em geral, o cuboid é usado para criar objetos que precisam ter cantos arredondados para evitar bordas afiadas, como caixas, estojos e outros objetos similares.

//Parâmetro "rounding": Pode arredondar as arestas.

//cuboid([100,80,60], rounding=20);//Cria um paralelepípedo com dimensões 100mm x 80mm x 60mm e com cantos arredondados com um raio de 20mm.

//Parâmetro "chamfer": pode chanfrar as arestas.

//cuboid([100,80,60], chamfer=10);//Cria um paralelepípedo com dimensões 100mm x 80mm x 60mm e com cantos chanfrados com um raio de 10mm.

//Parâmetro "edges": Arredondamento de algumas arestas.

//cuboid([100,80,60], rounding=20, edges=TOP);//Cria um paralelpípedo com 100mm x 80mm x 60mm e com cantos arredondados na parte superior(TOP).

//Se você der edges= um vetor apontando para uma aresta, ele arredondará apenas essa aresta:
//cuboid([100,80,60], rounding=10, edges=FRONT+TOP);//Arredondamento somente da superior da frente.
//cuboid([100,80,60], rounding=10, edges=RIGHT+FRONT);//Outro exemplo, arredondando a parte direta da frente.

//            Utilizando Cilindros

//cylinder(r=50,h=50,center=true);//Criação de um cilíndro com raio 50mm, altura 50mm e centralizado.
//cylinder(d=100,h=50,center=true);//Criação de um cilíndro com diâmetro de 100mm, altura 50mm e centralizado.
//cylinder(d1=100,d2=80,h=50,center=true);//Criação de um cilíndro com diâmetro inferior de 100mm,o diâmetro superior de 80mm, altura 50mm e centralizado.

//cylinder(r=50, h=50, anchor=TOP+FRONT);//Criação de um cilíndro com o raio de 50mm, altura 50mm e posiciona de forma que sua face superior (TOP) esteja no plano XY e sua face frontal (FRONT) esteja no plano XZ
//cylinder(r=50, h=50, anchor=BOTTOM+LEFT);//Criação de um cilíndro com o raio de 50mm, altura 50mm e posiciona de forma que sua face inferior (BOTTOM) esteja no plano XY e sua face esquerda esteja no plano YZ.
//cylinder(r=50, h=50, anchor=BOTTOM+LEFT, spin=30);//Mesma coisa porém será rotacionado em um ângulo de 30 graus sobre o eixo z.
//cylinder(r=50, h=50, anchor=BOTTOM, orient=UP+BACK+RIGHT);//Criação de um cilíndro com o raio de 50mm, altura 50mm e posiciona de forma que sua face inferior (BOTTOM) esteja no plano XY, rotacionado para que sua face superior (UP), face traseira (BACK) e face direita (RIGHT) fiquem alinhadas com os eixos do sistema de coordenadas global.

//Cyl: O BOSL2 fornece um cyl()módulo que se expande em cylinder(), fornecendo arredondamento e chanfro de arestas. Você pode usá-lo de forma semelhante a cylinder(), exceto que cyl()centraliza o cilindro por padrão.

//cyl(r=60, l=100);//cria um cilindro com um raio de 60 unidades e uma altura ou comprimento de 100 unidades.
//cyl(d=100, l=100, anchor=TOP);//Mesma coisa porém com a face superior esteja no plano XY.
//cyl(d=100, l=100, rounding=20);//Arredondamento das arestas em um raio de 20mm.
//cyl(d=100, l=100, chamfer=10);//Da mesma forma, porém com arestas chanfradas com um raio de 10mm.
//cyl(d=100, l=100, rounding1=20);//Arredondamento da aresta da parte inferior em um raio de 20mm.
//cyl(d=100, l=100, rounding2=20);//Arredondamento da aresta da parte superior em um raio de 20mm.
//cyl(d=100, l=100, chamfer1=10);//A aresta inferior chanfrada com um raio de 10mm.
//cyl(d=100, l=100, chamfer2=10);//A aresta superior chanfrada com um raio de 10mm.
//cyl(d=100, l=100, rounding1=20, chamfer2=10);//Misturando o arredondamento com o chanframento.

//            Utilizando Esferas

//sphere(r=50);//Criação de uma esfera com o raio de 50mm.
//sphere(d=100);//Criação de uma esfera com o diâmetro de 100 unidades.
//sphere(d=100, anchor=FRONT);//Posiciona de forma que sua face frontal (FRONT) esteja no plano XZ.
//sphere(d=100, anchor=FRONT, spin=30);//Será rotacionado em um ângulo de 30 graus sobre o eixo z.
//sphere(d=100, anchor=BOTTOM, orient=RIGHT+TOP);//Posiciona de forma que sua face inferior (BOTTOM) esteja no plano XY e a esfera será orientada de tal forma que a direção positiva do eixo X aponte para a direita e a direção positiva do eixo Y aponte para cima.

//Spheroid: O BOSL2 também fornece spheroid(), que é aprimorado sphere()com alguns recursos como os argumentos circum=e :style=

//spheroid(d=100, circum=true);//Argumento(circum) para forçar a esfera a circunscrever a esfera ideal, em oposição à inscrição padrão.
//spheroid(d=100, style="orig", $fn=20);//Argumento(style) pode escolher a forma como a esfera será construída: O estilo "orig" corresponde à sphere()construção do built-in, e também adicionando um resolução($fn) de 20 ao objeto.
//spheroid(d=100, style="aligned", $fn=20);//O estilo "alinhado" garantirá que haja um vértice em cada extremo do eixo, desde que $fn seja um múltiplo de 4.
//spheroid(d=100, style="stagger", $fn=20);//O estilo "escalonar" irá escalonar a triangulação das linhas verticais
//spheroid(d=100, style="icosa", $fn=20);//O estilo "icosa" criará triângulos de tamanho aproximadamente igual para toda a superfície da esfera, com base na subdivisão de um icosahedron. Este estilo arredondará o efetivo $fn para um múltiplo de 5 ao construir o esferóide.
//spheroid(d=100, style="octa", $fn=20);//O estilo "octa" também criará triângulos de tamanhos aproximadamente iguais para toda a superfície da esfera, mas com base na subdivisão de um octahedron. Isso é útil porque garante vértices nos extremos do eixo. Este estilo arredondará o efetivo $fn para um múltiplo de 4 ao construir o esferóide.