
 // https://youtu.be/ZG_vrjA9IIU
 
 // https://www.youtube.com/watch?v=ZG_vrjA9IIU       cualquiera de los dos links deberia funcionar.
 
 PImage imgObra;
 float ola;
 int olaActiva;
 int olaFrenada;
 float velocidad;
 int capas;


  void setup() {
     size(800, 400);
     colorMode(HSB, 360, 100, 100);
    imgObra = loadImage("13.jpg");
     resetPrograma();
    
      }



   void draw() {
     background(0, 0, 100);
     image(imgObra, 0, 0, 400, 400);
      rectMode(CENTER);
     noStroke();
  
  
  
  if (olaActiva == 1 && olaFrenada == 0) {   // logica de la ola
    ola = ola + velocidad;
    if (ola >= 1) {
      ola = 0;
    }
  }
  
     
       dibujarCuadrados();
       }
       

    
    
       
