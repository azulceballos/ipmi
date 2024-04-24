//Azul Ceballos
//tp1 Comision1
PImage fondo;
void setup(){
size(800,400);
fondo = loadImage("gato naranja 3.jpg");
}
void draw(){
background(222, 184, 135);
fill(245, 175, 100);//color cuerpo
strokeWeight(0);//trazo cuerpo
ellipse(620, 293, 130, 140);//cuerpo
image(fondo, 0, 0, 400, 400);
ellipse(630,170, 135, 135);//cara
fill(200, 200, 140);//color ojo
strokeWeight(2);//trazo ojo
ellipse(650, 176, 25, 25);//ojo)
fill(0, 0, 0);//color pupila
ellipse(650, 175, 5, 15);//pupila
fill(200, 200, 140);//color ojo izq
strokeWeight(2);//trazo ojo izq
ellipse(605, 170, 25, 25);//ojo izq
fill(0, 0, 0);//color pupila izq
ellipse(606, 170, 5, 15);//pupila izq
fill(245, 175, 100);//color oreja izq 270, 184, 135
strokeWeight(0);
triangle(642, 113, 695, 68, 695, 147);//oreja izq
triangle(564, 143, 572, 48, 614, 110);//oreja der
fill(255, 245, 245);//color mancha blanca
strokeWeight(0);//trazo mancha blanca
ellipse(627, 224, 62, 35);//mancha blanca
fill(270, 184, 135);//color nariz
strokeWeight(0);//nariz trazo
triangle(618, 195, 635, 196, 627, 210);//nariz
triangle(627, 209, 636, 218, 617, 215);//nariz
fill(245, 175, 100);//color pata der
strokeWeight(0);//trazo pata der
ellipse(590, 340, 60, 50);//pata der
ellipse(638, 345, 60, 50);//pata izq


println(mouseX);

}
