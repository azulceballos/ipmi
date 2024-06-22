// Azul Ceballos tp3 comision 1
// https://youtu.be/UNrngcdP-Y4

PImage fondo;
color circulocolor;
color lineascolor;
color circulocolororiginal; 
color lineascolororiginal;

void setup() {
  size(800, 400);
  fondo = loadImage("F_7.jpg");
  circulocolor = color(255); 
  lineascolor = color(120);
  circulocolororiginal = circulocolor;
  lineascolororiginal = lineascolor;
}

void draw() {
  float colorfondo = map(mouseX - 400, 0, width, 0, 255);
  background(colorfondo);
  image(fondo, 0, 0, 400, 400);
 
  int numcuadrados = 7; //numero de cuadrados a dibujar
  float grilla = (width - 400) / float(numcuadrados); //tamaño de cada cuadrado en la grilla

//dibujar la grilla de lineas
  dibujargrilla(numcuadrados, grilla);

//dibujar los circulos en las intersecciones
  dibujarcirculos(numcuadrados, grilla); 
  }
  
//funcion para dibujar la grilla de lineas
void dibujargrilla(int numcuadrados, float grilla) {
  stroke(lineascolor); // color de las líneas
  strokeWeight(15);
  
//dibujar las lineas verticales
  for (int i = 0; i <= numcuadrados; i++) {
    float x = 400 + i * grilla;
    line(x, 0, x, height);
  }

//dibujar las lineas horizontales
  for (int i = 0; i <= numcuadrados; i++) {
    float y = i * grilla;
    line(400, y, width, y);
  }
}

//funcion para calcular y retornar la posicion X de un círculo en la grilla
float calcularposicionX(int indice, float grilla) {
  return 400 + indice * grilla;
}

//funcion para dibujar los circulos en las intersecciones
void dibujarcirculos(int numcuadrados, float grilla) {
  stroke(circulocolor); // color de los círculos
  strokeWeight(10);
  for (int i = 0; i <= numcuadrados; i++) {
    for (int j = 0; j <= numcuadrados; j++) {
      float ellipseX = calcularposicionX(j, grilla);
      float ellipseY = i * grilla;
      ellipse(ellipseX, ellipseY, 10, 10);
    }
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    circulocolor = color(20);
  }
  if (key == 's' || key == 'S') {
    lineascolor = color(200);
  }
  if (key == 'r' || key == 'R') {
    lineascolor = color(random(255), random(255), random(255)); 
    circulocolor = color(random(255), random(255), random(255));
  }
  if (key == 'ñ' || key == 'Ñ') { 
     
    
    
    
    circulocolor = circulocolororiginal;
    lineascolor = lineascolororiginal;
    }
  }
