PImage img, imgKirby, imgKirby2, imgKirby3, imgKirby4, imgW, imgN, imgP3, imgW2, 
       imgP4a, imgP4b, imgP4c, imgP5a, imgP5b, imgP5c, 
       imgP6centro, imgP6arriba, imgP6derecha, imgP6izquierda, imglogo, imgfinal;

float x1, x2;
float velocidad = 2;  // Velocidad del fondo en movimiento.
PFont title;

float tamTexto = 100;
float tamImg;

int posyKirby2, posyKirby3, posyKirby4, posY;
float posxW, posxN, posxW2;
float posxP4a, posxP4b, posxP4c, posxP4d, posxP4e, posxP4f;  // posiciones en x de pantalla 4
float posxP5a, posxP5b, posxP5c, posxP5d, posxP5e, posxP5f;   // posiciones en x de pantalla 5
float tamP6centro, tamP6arriba, tamP6derecha, tamP6izquierda;  // tamaño de imagen pantalla 6
float opacidadTexto4 = 0;
float opacidadTexto5 = 0;
float posxRectP3, posxRectP6;    // rect movimiento pantalla 3 y 6

// variables para el cambio de pantalla
int temporizador = 0;
int pantalla = 0;
float opacidad = 255;
boolean desvaneciendo = false;




void setup() {

  size(640, 480);

//ASIGNACION DE VARIABLES

  posyKirby2 = height + 100;
  posyKirby3 = height + 100;
  posyKirby4 = height + 100;
  posY       = -50;
  posxW      = width + 100;
  posxN      = -50;
  posxW2     = -80;

  posxP4a = width + 100;
  posxP4b = -200;
  posxP4c = width + 100;
  posxP4d = width + 100;
  posxP4e = -200;
  posxP4f = width + 100;

  posxP5a = width + 100;
  posxP5b = -200;
  posxP5c = width + 100;
  posxP5d = width + 100;
  posxP5e = -200;
  posxP5f = width + 100;

  tamP6centro    = 0;
  tamP6arriba    = 0;
  tamP6derecha   = 0;
  tamP6izquierda = 0;
  
   posxRectP3 = 506;
   posxRectP6 = 540;  
  
  
  //IMAGENES CARGADAS

  img        = loadImage("bg.jpg");
  imglogo    = loadImage("kirbylogo.png");
  imgKirby   = loadImage("kirby.inicio.png");
  imgKirby2  = loadImage("kirby.corriendo.png");
  imgKirby3  = loadImage("kirby.saltando.png");
  imgKirby4  = loadImage("kirby.succionando.png");
  imgW       = loadImage("waddle.dee2.png");
  imgN       = loadImage("Nintendo.png");
  imgP3      = loadImage("gameplay.jpg");
  imgW2      = loadImage("Wcorriendo.png");
  imgP4a     = loadImage("bandana dee.png");
  imgP4b     = loadImage("kirbystar.png");
  imgP4c     = loadImage("elfin.png");
  imgP5a     = loadImage("gorimondo.png");
  imgP5b     = loadImage("clawroline.png");
  imgP5c     = loadImage("reydedede.png");
  imgP6centro    = loadImage("mundo.png");
  imgP6arriba    = loadImage("naturalplains.png");
  imgP6derecha   = loadImage("OriginullWasteland.png");
  imgP6izquierda = loadImage("EverybayCoast.png");
   imgfinal = loadImage("final.png");

  title = loadFont("UpheavalTT-BRK--48.vlw");
  img.resize(width, height);

  x1 = 0;
  x2 = -width;
}




// ==========================
void draw() {
// ==========================
  background(0);
  println("X: " + mouseX + " Y: " + mouseY);
  noStroke();



// CAMBIO DE ESTADO/PANTALLA
  fondoBucle();

  if      (pantalla == 0) { 
  pantalla0(); 
}

  else if (pantalla == 1) { 
    pantalla1(); 
}
  else if (pantalla == 2) { 
  pantalla2(); 
}
  else if (pantalla == 3) { 
  pantalla3(); 
}
  else if (pantalla == 4) { 
  pantalla4(); 
}
  else if (pantalla == 5) { 
  pantalla5(); 
}
  else if (pantalla == 6) { 
  pantalla6(); 
}
  else if (pantalla == 7) { 
  pantalla7(); 
}
}




// FONDO EN MOVIMIENTO
void fondoBucle() {

  image(img, x1, 0);
  image(img, x2, 0);

  x1 += velocidad;
  x2 += velocidad;

  if (x1 > width) { 
  x1 = x2 - width; 
}
  if (x2 > width) { 
  x2 = x1 - width; 
}
}



// PANTALLAS

//PANTALLA 0

void pantalla0() {

  if (desvaneciendo && opacidad > 0) { 
  opacidad -= 5; }

  if (opacidad <= 0) {
    pantalla     = 1;
    opacidad     = 0;
    temporizador = 0;
    tamTexto     = 150;
  }

  if (opacidad > 0) {
    
   tint(255, opacidad);
     image (imglogo, 180, 1, 298,190);
     noTint(); 
     
    tint(255, opacidad);
    image(imgKirby, 210, 178, 240, 240);
    noTint();
    
    fill(255, 100, 150, opacidad);
    rectMode(CENTER);
    rect(320, 434, 120, 50, 10);
    fill(255, opacidad);
    textAlign(CENTER);
    textFont(title);
    textSize(20);
    text("START", 320, 440);
  }
}



//PANTALLA 1
void pantalla1() {

  if (opacidad < 255) { 
  opacidad += 4; 
}

  if (temporizador > 1000) {
    opacidad -= 5;
    posxN -= 2.5;
  }

  if (opacidad <= 0) {
    pantalla     = 2;
    opacidad     = 0;
    temporizador = 0;
    tamTexto     = 10;
  }

  if (posxW > 419)  { 
  posxW -= 2; 
}
  if (posxW <= 419) { 
  posxW = 419; 
temporizador++; 
}

  if (tamTexto < 350) { 
  tamTexto += 3; 
}

  if (posxN < 70)  { 
  posxN += 1; 
}
  if (posxN >= 70) { 
  posxN = 70; 
}



  tint(255, opacidad);
  image(imgW, posxW, 280, 200, 200);
  noTint();
  image(imgN, posxN, 250, 250, 250);

  textFont(title);
  fill(228, 100, 63, opacidad);
  rectMode(CENTER);
  rect(193, 88, 375, 160, 10);

  fill(255, opacidad);
  textSize(40);
  textAlign(CENTER);
  text("HISTORIA", 510, 100, tamTexto, 50);

  textAlign(LEFT);
  fill(255, opacidad);
  textSize(24);
  text("Es un juego de Nintendo Switch lanzado en 2022, con jubabilidad completa en 3D, donde el jugador debe guiar a kirby a travez de diferente etapas para salvar a los Waddle Dees al final.", 200, 275, tamTexto, 500);
}



//PANTALLA 2

void pantalla2() {

  if (opacidad < 255) { 
  opacidad += 4; 
}

  if (posY < 26)  { 
  posY += 1; 
}
  if (posY >= 26) { 
  posY = 26;
}

  if (posyKirby2 > 312)  { 
  posyKirby2 -= 2; 
}
  if (posyKirby2 <= 312) { 
  posyKirby2 = 312; 
  temporizador++;
}

  if (posyKirby3 > 312)  { 
  posyKirby3 -= 2; 
}
  if (posyKirby3 <= 312) { 
  posyKirby3 = 312; 
  temporizador++; 
}

  if (posyKirby4 > 312)  { 
  posyKirby4 -= 2;
}
  if (posyKirby4 <= 312) { 
  posyKirby4 = 312; 
  temporizador++; 
}

  if (tamTexto < 500) { 
  tamTexto += 15; 
}

  if (temporizador > 2100) { 
  opacidad -= 7; 
}

  if (opacidad <= 0) {
    pantalla     = 3;
    opacidad     = 0;
    temporizador = 0;
    tamTexto= 0;
  }



  tint(255, opacidad);
  image(imgKirby2, 228, posyKirby2, 200, 200);
  image(imgKirby3, 453, posyKirby3, 180, 180);
  image(imgKirby4, 27,  posyKirby4, 190, 190);
  noTint();

  fill(255, 100, 150, opacidad);
  rectMode(CENTER);
  rect(320, 135, 520, 200, 10);

  textFont(title);
  textAlign(CENTER);
  fill(255, opacidad);
  textSize(30);
  text("HABILIDADES", 327, posY);

  fill(255, opacidad);
  textSize(25);
  text("Kirby puede saltar, deslizarse, inhalar enemigos y objetos que puede escupir como proyectiles o tragar para copiar sus habilidades. Tambien las habilidades para copiar pueden mejorarse, pero se necesitan piedras raras que se encuentrar a lo largo del juego para hacerlo.", 320, 212, tamTexto, 300);
}







//PANTALLA 3
void pantalla3() {
  
 

  if (opacidad < 255) { 
  opacidad += 4; 
}

if (tamTexto < 210) { 
  tamTexto += 2.5; 
}

  posxW2 += 2.1; // Para que se mueva el waddle chiquito
  
  if (tamImg < 300) { 
  tamImg += 3; 
}

  if (posY < 60)  { 
  posY += 1; 
}

  if (posY >= 60) { 
  posY = 60; 
}

  temporizador++;
  if (temporizador > 1000) { 
  opacidad -= 7; 
  posxRectP3 += 3; 
}

  if (opacidad <= 0) {
    pantalla     = 4;
    opacidad     = 0;
    temporizador = 0;
  }




  fill(69, 178, 234);
  rectMode(CENTER);
  rect(posxRectP3, 210, 245, 250, 10);

  tint(255, opacidad);
  imageMode(CENTER);
  image(imgP3, 200, 200, tamImg, tamImg);
  image(imgW2, posxW2, 427, 100, 100);
  imageMode(CORNER);
  noTint();

  textAlign(LEFT);
  fill(255,opacidad);
  textSize(25);
  text("Rescatar a los Waddle Dees y lograr ciertos objetivos especificos en cada etapa. Una vez rescatados, estos regresan al 'Waddle Dee Toen', el centro principal del juego", 510, 215, tamTexto, 230);

  textFont(title);
  textAlign(CENTER);
  fill(255, opacidad);
  textSize(40);
  text("OBJETIVOS", 506, posY);
}




//PANTALLA 4

void pantalla4() {

  if (opacidad < 255) { opacidad += 4; }

  if (posxP4a > 420) { 
  posxP4a -= 3; 
}
  if (posxP4b < 4)   { 
  posxP4b += 3; 
}
  if (posxP4c > 450) { 
  posxP4c -= 3; 
}
  if (posxP4d > 226) { 
  posxP4d -= 3; 
}
  if (posxP4e < 428) { 
  posxP4e += 4; 
}
  if (posxP4f > 240) { 
  posxP4f -= 3; 
}



  temporizador++;
  
  
  if (temporizador > 2300) { 
  opacidad -= 7; 
}

  if (opacidad <= 0) {
    pantalla     = 5;
    opacidad     = 0;
    temporizador = 0;
  }




  rectMode(CENTER);
  fill(#CEC73C, opacidad);
  rect(posxP4d, 118, 410, 100);
  fill(#F55E9D, opacidad);
  rect(posxP4e, 270, 410, 110);
  fill(#128B86, opacidad);
  rect(posxP4f, 419, 410, 110);

  tint(255, opacidad);
  image(imgP4a, posxP4a, 25,  180, 180);
  image(imgP4b, posxP4b, 160, 200, 200);
  image(imgP4c, posxP4c, 340, 140, 140);
  noTint();

if (posxP4d <= 226 && posxP4e >= 428 && posxP4f <= 240) {
  
  if (opacidadTexto4 < opacidad) { opacidadTexto4 += 2; }
   if (temporizador > 2300) { opacidadTexto4 -= 7; }

  textFont(title);
  fill(255, 220, 80, opacidadTexto4);
  textSize(30);
  textAlign(CENTER);
  text("Bandana Waddle Dee", 233, 57);
  fill(255, opacidadTexto4);
  textSize(18.5);
  text("Es el leal e inseparable amigo de Kirby. En este juego actúa como el compañero perfecto en el modo cooperativo para un segundo jugador, utilizando su lanza con gran agilidad.", 226, 163, 400, 150);

  textFont(title);
  fill(#F55E9D, opacidadTexto4);
  textSize(30);
  text("Kirby", 410, 213);
  fill(255, opacidadTexto4);
  textSize(18.5);
  text("Es el valiente y redondo héroe rosado, quien es absorbido por un portal hacia un misterioso mundo en ruinas.   En esta entrega estrena la Transmorfosis, una técnica que le permite tragar objetos enormes..", 429, 311, 400, 150);

  textFont(title);
  fill(#128B86, opacidadTexto4);
  textSize(30);
  text("Elfin", 214, 354);
  fill(255, opacidadTexto4);
  textSize(18.5);
  text("Es una pequeña y misteriosa criatura flotante de color turquesa con grandes orejas, que Kirby rescata al inicio del juego.  Se convierte en el guía y compañero de viaje.", 240, 460, 380, 150);
}
}





//PANTALLA 5
void pantalla5() {

  
  if (opacidad < 255) {    //img
  opacidad += 4; 
}

  if (posxP5a > 420) {  //img
  posxP5a -= 3; 
}  
  if (posxP5b < 4)   {   //img
  posxP5b += 3; 
} 
  if (posxP5c > 450) { //rect
  posxP5c -= 3; 
}   
  if (posxP5d > 226) { //rect
  posxP5d -= 3; 
}   
  if (posxP5e < 428) { //rect
  posxP5e += 4; 
}  
  if (posxP5f > 227) { //rect
  posxP5f -= 3; 
}   

  temporizador++;
  
  
  if (temporizador > 2100) { 
  opacidad -= 7; 
}

  if (opacidad <= 0) {
    pantalla     = 6;
    opacidad     = 0;
    temporizador = 0;
    tamTexto     = 0;  
  }
  
  
  
  

  rectMode(CENTER);
  fill(#4F5252, opacidad);
  rect(posxP5d, 118, 410, 100);
  fill(#A08810, opacidad);
  rect(posxP5e, 270, 410, 100);
  fill(#208DC6, opacidad);
  rect(posxP5f, 410, 410, 90);

  tint(255, opacidad);
  image(imgP5a, posxP5a, 25,  180, 180);
  image(imgP5b, posxP5b, 160, 200, 200);
  image(imgP5c, posxP5c, 340, 140, 140);
  noTint();

if (posxP5d <= 226 && posxP5e >= 428 && posxP5f <= 227) {
  if (opacidadTexto5 < opacidad) { opacidadTexto5 += 2; }
if (temporizador > 2100) { opacidadTexto5 -= 7; }


  textFont(title);
  fill(#4F5252, opacidadTexto5);
  textSize(30);
  textAlign(CENTER);
  text("Gorimondo", 233, 57);
  fill(255, opacidadTexto5);
  textSize(18.5);
  text("Es un gigantesco e imponente gorila que actúa como uno de los primeros grandes líderes de la Jauría.   Este se dedica a capturar Waddle Dees en jaulas y atacar a Kirby.", 226, 158, 390, 150);

  textFont(title);
  fill(#DEC226, opacidadTexto5);
  textSize(30);
  text("Clawroline", 410, 213);
  fill(255, opacidadTexto5);
  textSize(18.5);
  text("Es una ágil y elegante felina que sirve como la mano derecha de los altos mandos de la Jauría.   Utiliza sus afiladas garras retráctiles para atacar.", 428, 313, 400, 150);

  textFont(title);
  fill(#208DC6, opacidadTexto5);
  textSize(30);
  text("Rey Dedede", 214, 354);
  fill(255, opacidadTexto5);
  textSize(18.5);
  text("El eterno rival de Kirby regresa en este juego, pero esta vez bajo el control mental de la Jauría, lo que lo vuelve mucho más salvaje y agresivo.", 226, 455, 380, 150);
}

}




//PANTALLA 6
void pantalla6() {

  if (opacidad < 255) { 
  opacidad += 4; 
}

  temporizador++;


  if (tamP6centro < 250) { 
  tamP6centro += 3; }  //img del centro

  
  if (temporizador > 200) {     //img del costado
    if (tamP6arriba    < 160) { 
    tamP6arriba    += 3; }
    if (tamP6derecha   < 160) { 
    tamP6derecha   += 3; }
    if (tamP6izquierda < 160) { 
    tamP6izquierda += 3; }
  }

  
  if (tamTexto < 195) { 
  tamTexto += 2.5; 
}

  
  if (temporizador > 1000) {
    tamP6centro    -= 4;
    tamP6arriba    -= 4;
    tamP6derecha   -= 4;
    tamP6izquierda -= 4;
    posxRectP6 += 1; 
    opacidad       -= 5;
  }

 
  if (tamP6centro    < 0) { 
  tamP6centro    = 0; 
}
  if (tamP6arriba    < 0) { 
  tamP6arriba    = 0; 
}
  if (tamP6derecha   < 0) { 
  tamP6derecha   = 0; 
}
  if (tamP6izquierda < 0) { 
  tamP6izquierda = 0; 
}

  if (opacidad <= 0) {
    pantalla       = 7;
    opacidad       = 0;
    temporizador   = 0;
    tamTexto       = 0;
    tamP6centro    = 0;
    tamP6arriba    = 0;
    tamP6derecha   = 0;
    tamP6izquierda = 0;
  }

  
  
  
  fill(#23B432);
  rectMode(CENTER);
  rect(  posxRectP6, 240, 200, 250, 10);

 
  tint(255, opacidad);
  imageMode(CENTER);
  image(imgP6centro,    310, height/2, tamP6centro,    tamP6centro);
  image(imgP6arriba,     76, 61,       tamP6arriba,    tamP6arriba);
  image(imgP6derecha,    80, 224,      tamP6derecha,   tamP6derecha);
  image(imgP6izquierda,  80, 386,      tamP6izquierda, tamP6izquierda);
  imageMode(CORNER);
  noTint();

 
  textFont(title);
  fill(255, opacidad);
  textSize(35);
  textAlign(CENTER);
  text("ESCENARIO", 540, 160);

  fill(255, opacidad);
  textSize(17);
  textAlign(CENTER);
  text("El escenario principal es la Tierra Olvidada, un planeta que alguna vez estuvo habitado por una civilización tecnológicamente muy avanzada, similar a la humana. \n\nEl juego utiliza un mapa general en 3D, dividido en regiones o islas flotantes.",
       543, 385, tamTexto, 420);
}







//PANTALLA 7
void pantalla7() {

  if (opacidad < 255) { opacidad += 4; }

  tint(255, opacidad);
  image(imgfinal, 142, 70, 340, 340);
  noTint();

  textAlign(CENTER);
  textFont(title);
  fill(255, opacidad);
  textSize(36);
 

  fill(255, 100, 150, opacidad);
  rectMode(CENTER);
  rect(320, 434, 140, 50, 10);
  fill(255, opacidad);
  textSize(20);
  text("RESTART", 320, 441);
}




// RESTART PARA VOLVERA A LA PANTALLA 0
void resetear() {

  pantalla      = 0;
  opacidad      = 255;
  temporizador  = 0;
  desvaneciendo = false;
  tamTexto      = 100;
  tamImg        = 0;

 
  
}



// BOTON START Y RESTART

void mousePressed() {

  if (pantalla == 0) {
    if (mouseX > 260 && mouseX < 380 && mouseY > 409 && mouseY < 459) {
      desvaneciendo = true;
    }
  }
  if (pantalla == 7) {
    if (mouseX > 250 && mouseX < 390 && mouseY > 409 && mouseY < 459) {
      resetear();
    }
  }
}
   
   
