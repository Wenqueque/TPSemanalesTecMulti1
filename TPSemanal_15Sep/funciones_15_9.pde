int pantalla = 1; //pantalla

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  if(pantalla == 1){
    dibujarPantalla(color(200), "Pantalla 1", 250, 300, 2);
  }else if(pantalla == 2){
    dibujarPantalla(color(0,0,200), "Pantalla 2", 50, 300, 3);
  }else if(pantalla == 3){
    dibujarPantalla(color(0,200,0), "Pantalla 3", 150, 300, 1);
  }
}


boolean dibujarBoton(int posX, int posY){ //boolean
  int ancho = 100;
  int alto = 50;
  boolean hiceClick = false;
  
  fill(255);
  if(mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto){
    fill(190);
    
    if(mousePressed){
      fill(255,0,0);
      hiceClick = true;
    }
  }
  
  rect(posX, posY, ancho, alto);
  
  return hiceClick;
 }
 
 void dibujarPantalla(color colorFondo, String texto, int posXBoton, int posYBoton, int pantallaSiguinte){ //pantallas
  background(colorFondo);
  
  fill(0);
  text(texto, 100, 100);
  
  if(dibujarBoton(posXBoton, posYBoton)){
    pantalla = pantallaSiguinte;
  }
}
