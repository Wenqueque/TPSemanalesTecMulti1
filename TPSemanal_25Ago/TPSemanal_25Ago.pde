int cant = 20 ;
int tamX, tamY;
int col1, fila1 = 0;
int col2 = 19, fila2 = 19;
int [][] misDatos = new int [cant][cant]; // entre los [] es la dimension del arreglo (en este caso cant, que son 10 en ambos), en cada una de las posiciones del primer arreglo van a haber dentro la cantidad de arreglos de la segunda dimension

void setup() {
  size(500, 400);
  tamX = width/cant;
  tamY = height/cant;
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      misDatos[col][fila] = 0; //Si ponemos '= col*fila nos sale la tabla de multiplicación'
    }
  }
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      if (random(100) > 95)
        misDatos[col][fila] = 2;
    }
  }
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      if (random(100) > 95)
        misDatos[col][fila] = 3;
    }
  }
  misDatos[0][0] = 1;
  misDatos[col2][fila2]= 4;
}

void draw() {
  background(200);
  for (int col=0; col < cant; col++) {
    for (int fila=0; fila < cant; fila++) {
      if (misDatos [col][fila] == 1) {
        fill(250, 0, 0);
      } else if (misDatos [col][fila] == 2) {
        fill(225, 225, 0);
      } else if (misDatos [col][fila] == 3) {
        fill(0);
      } else if (misDatos [col][fila] == 4) {
        fill(0, 0, 255);
      } else {
        fill(200);
      }
      rect(col*tamX, fila*tamY, tamX, tamY); //creó un for anidado para crear una grilla con líneas

      noStroke();
      //fill(0);
      /*
      textSize(10);
       text(col + ":" + fila, col*tamX + tamX/2, fila*tamY + tamY - tamY/5);
       */
    }
  }
}

void keyPressed() {
  if (keyCode == RIGHT && col1 < 19) {
    if (misDatos[col1+1][fila1] != 3) {
      misDatos[col1][fila1] = 0;
      misDatos[col1+1][fila1] = 1;
      col1 = col1 + 1;
    }
  } else if (keyCode == LEFT && col1 > 0) {
    if (misDatos[col1-1][fila1] != 3) {
      misDatos[col1][fila1] = 0;
      misDatos[col1-1][fila1] = 1;
      col1  = col1 - 1;
    }
  } else if (keyCode == UP && fila1 >0) {
    if (misDatos[col1][fila1-1] != 3) {
      misDatos[col1][fila1] = 0;
      misDatos[col1][fila1-1] = 1;
      fila1  = fila1 - 1;
    }
  } else if (keyCode == DOWN && fila1 < 19) {
    if (misDatos[col1][fila1+1] != 3) {
      misDatos[col1][fila1] = 0;
      misDatos[col1][fila1+1] = 1;
      fila1  = fila1 + 1;
    }
  } else if (keyCode == 'd' || keyCode == 'D' && col2 < 19) {
    if (misDatos[col2+1][fila2] != 3) {
      misDatos[col2][fila2] = 0;
      misDatos[col2+1][fila2] = 4;
      col2 = col2 + 1;
    }
  } else if (keyCode == 'a' || keyCode == 'A' && col2 > 0) {
    if (misDatos[col2-1][fila2] != 3) {
      misDatos[col2][fila2] = 0;
      misDatos[col2-1][fila2] = 4;
      col2 = col2 - 1;
    }
  } else if (keyCode == 'w' || keyCode == 'W' && fila2 > 0) {
    if (misDatos[col2][fila2-1] != 3) {
      misDatos[col2][fila2] = 0;
      misDatos[col2][fila2-1] = 4;
      fila2 = fila2 - 1;
    }
  } else if (keyCode == 's' || keyCode == 'S' && fila2 < 19) {
    if (misDatos[col2][fila2+1] != 3) {
      misDatos[col2][fila2] = 0;
      misDatos[col2][fila2+1] = 4;
      fila2 = fila2 + 1;
    }
  }
}
