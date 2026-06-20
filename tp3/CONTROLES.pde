

     void mousePressed() {      // activar animacion
     olaActiva = 1;
      }

    void keyPressed() {   // reiniciar animacion
     if (key == ' ') {
    resetPrograma();
     }
  
  

  
  if (key == 's' || key == 'S') {     // para animacion y la reanuada donde quedo
    if (olaActiva == 1) {
      if (olaFrenada == 1) {
        olaFrenada = 0;
      } else {
        olaFrenada = 1;
      }
    }
  }
  
  if (key == 'c' || key == 'C') {
    capas = capas + 1;
    if (capas > 20) {
        capas = 3;
    }
}
  
  
       if (keyCode == RIGHT) {       // aumentar velocidad
       velocidad += 0.002;
      
      
     }
     if (keyCode == LEFT) {         // bajar velocidad
      velocidad -= 0.002;
     
       }
        }
        
        
     
    void resetPrograma() {    
      ola = 0;
      olaActiva = 0;
      olaFrenada = 0;
     velocidad = 0.01;
     capas = 10;
        }

 
