    
     
     void dibujarCuadrados() {   // los 4 cuadraddos
  
  for (int fila = 0; fila < 2; fila++) {    // F0 - C0,  F0 - C1,  F1 - C0, F1 - F1    ORDEN DE COMO SE EJECUTAN LOS CICLOS FOR
    for (int col = 0; col < 2; col++) {
     int cuadrante = fila * 2 + col;     // es para saber en que cuadrante nos encontamos (0, 1, 2 o 3)
    
      
      pushMatrix();
      translate(500 + col * 200, 100 + fila * 200);   // modifica el centro en X y en Y
     
      dibujarUnCuadrado(cuadrante);   // llama a la funcion, pq cada cuadrante tiene su propio color, cuadrante 0 es verde, cuadrante 1 es rojo, cuadrante 2 es amarrillo y cuadrante 3 es violeta
      popMatrix();
    }
  }
}






     // cuadrados individuales

         void dibujarUnCuadrado(int cuadrante) {  
  float hMin, hMax;      //  Min es el color del centro, Max es el color del borde externo. HUE, SATURATION, BRILLO
  float sMin, sMax;
  float bMin, bMax;

  if (cuadrante == 0) {
    // Cuadrante 0: Verde
    hMin = 122; hMax = 161;             
    sMin = 62;  sMax = 100;
    bMin = 70;  bMax = 28;
    
  } else {
    if (cuadrante == 1) {
      // Cuadrante 1: Rojo 
      hMin = 349; hMax = 344;
      sMin = 38;  sMax = 96;
      bMin = 93;  bMax = 62;
      
    } else {
      if (cuadrante == 2) {
        // Cuadrante 2: Amarillo
        hMin = 53;  hMax = 10;
        sMin = 100; sMax = 70;
        bMin = 88;  bMax = 39;
        
       
      } else {
        // Cuadrante 3: Violeta
        hMin = 270; hMax = 263;
        sMin = 11;  sMax = 54;
        bMin = 88;  bMax = 58;
      }
     }  
     } 



     //  for (int i = 10; i >= 1; i--) {    // CICLO FOR PARA DIBUJAR LOS CUADRADOS DE ADENTRO. Comienza de afuera hacia adentro
     for (int i = capas; i >= 1; i--) {
       float tam = map(i, 1, capas, 20, 200);
  
   
  
   float h = calcularColor(i, hMin, hMax);    // i es la capa, hmin el color más claro y hmax el color más oscuro
    float s = calcularColor(i, sMin, sMax);
    float b = calcularColor(i, bMin, bMax);
    fill(h, s, b);
    rect(0, 0, tam, tam);
  }
   }









   float calcularColor(int capaCuadrante, float valMin, float valMax) {
 
   if (olaActiva == 0) {     // ola desactivada
   return map(capaCuadrante, 1, capas, valMin, valMax);
   

  } else {  // ola activa
   
   float posicion = map(capaCuadrante, 1, capas, 1, 0);
   float movimiento = ( posicion + ola) % 1;   // ola en movimiento


  return map(movimiento, 0, 1, valMin, valMax);
     }
    }  
