//Azul Ceballos
//tp2 comisión 1

PFont fuente;
String estado;

// Imágenes
PImage uno;
PImage dos;
PImage tres;
PImage cuatro;

// Textos
String Tuno;
String Tdos;
String Ttres;
String Tcuatro;

// Opacidad texto Uno y Cuatro
float alphaUno;
float alphaCuatro;

//posición texto Uno
int xUno;
int yUno;

//posición Y texto Dos, posición X texto Tres
int yDos;
int xTres;

int inicioo;
int segundos;

//tamaño del boton de reset
int boton;

  void setup() {
size(640, 480);
  
fuente = loadFont("fuentee.vlw");
textFont(fuente, 35);
estado = "inicio";
  
uno = loadImage("imagen1.jpg");
dos = loadImage("imagen2.jpg");
tres = loadImage("imagen3.jpg");
cuatro = loadImage("imagen4.jpg");
  
Tuno = "THE\n LAST\n OF US";
Tdos = "ELENCO\n Pedro Pascal - Joel\n  Bella Ramsey - Ellie \n Jeffrey Pierce - Perry \n Anna Trov - Theresa \n Nico Parker - Sarah \n Nick Offerman - Bill \n Merle Dandridge - Marlene";
Ttres = "La serie está basada en el exitoso videojuego creado por Naughty Dogs que narra las vivencias de Ellie y Joel, dos sobrevivientes de una pandemia causada por el hongo Cordyceps";
Tcuatro = "La segunda temporada de\n THE LAST OF US\n será estrenada en 2025";
  
alphaUno = 0;
alphaCuatro = 0;
  
xUno = 30;
yUno = 160;
  
yDos = height;
xTres = width;
  
inicioo = millis();
  
boton = 55;
  
}

  void draw() {
   background(0);

 if (estado.equals("inicio")) { 
    segundos = 0;
  }

  if (estado.equals("primera")){
    image(uno, 0, 0, 640, 480);
    fill(255, 255, 255, alphaUno);
    textSize(110);
    textAlign(BASELINE);
    text(Tuno, xUno, yUno);
    alphaUno += 0.5;
    
  } else if (estado.equals("segunda")) {
    image(tres, 0, 0, 640, 480);
    fill(210, 180, 140); 
    textSize(40);
    textAlign(CENTER);
    text(Tdos, 100, yDos, 400, 400);
    if (yDos>100) {
      yDos --;
    }
    
  } else if (estado.equals("tercera")) {
    image(dos, 0, 0, 640, 480);
    fill(150, 30, 60);
    textAlign(CENTER,TOP);
    text(Ttres, xTres, 100, 440, 400);
    xTres -= 1; 
    
  } else if (estado.equals("cuarta")) {
    image(cuatro, 0, 0, 640, 480);
    fill(124, 161, 79, alphaCuatro);
    textSize(50);
    textAlign(CENTER);
    text(Tcuatro, 315, 200);
    alphaCuatro += 1;
    
    fill(0, 0, 0);
    rect(width/2 - boton/2, height - 100, boton, boton);
    
    textSize(20);
    fill (255,255,255);
    text("RESET", 321, 415);
    
  }
  
  if (frameCount%60 == 0) {
    segundos++;
    estado = "inicio";
  }
  
  if (segundos < 9) {
    estado = "primera";
  } else if (segundos >= 9 && segundos <= 15) {
    estado = "segunda";
  } else if (segundos > 15 && segundos <35) {
    estado = "tercera";
  } else {
    estado = "cuarta";
  }
}

  void mousePressed() {
  // verificar si el clic se hizo dentro del boton
  if (estado.equals("cuarta") && mouseX >= width/2 - boton/2 && mouseX <= width/2 + boton/2 && 
      mouseY >= height - 100 && mouseY <= height - 100 + boton) {
    estado = "inicio";
    
    //reset de variables
    alphaUno = 0;
    alphaCuatro = 0;
    yDos = height;
    xTres = width;
    inicioo = millis();
    xUno = 30;
    yUno = 160;
  }
}
