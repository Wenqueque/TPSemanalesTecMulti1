String[] lines;
String[] miPalabras = {};
int[] miPalabrasPosX = {};
int[] miPalabrasPosY = {};
int[] miPalabrasTam = {};
color[] miPalabrasColor = {};
int[] miPalabrasVelocidad = {};
int [] rotePalabras = {};
int gr = 360;

void setup(){
  size(400,400);
  
  lines = loadStrings("texto.txt");
  
  for (int i = 0 ; i < lines.length; i++) {
    
    String [] palabras = split(lines[i], " ");
    
    for (int p = 0 ; p < palabras.length; p++) {
      miPalabras = append(miPalabras, palabras[p]);
      miPalabrasPosX = append(miPalabrasPosX, round(random(-100, width + 100)));
      miPalabrasPosY = append(miPalabrasPosY, round(random(-1000, -100)));
      miPalabrasTam = append(miPalabrasTam, round(random(5, 25)));
      miPalabrasColor = append(miPalabrasColor, color(0,round(random(50, 100))));
      miPalabrasVelocidad = append(miPalabrasVelocidad, round(random(3,10)));
      rotePalabras = append(rotePalabras, round(random(gr)));
    }
  }
}

void draw(){
  background(200);
  
  //for (int j = 0; j <= 360; j = j + 10) {
  for (int p = 0 ; p < miPalabras.length; p++) {
    fill(miPalabrasColor[p]);
    textSize(miPalabrasTam[p]);
    text(miPalabras[p], miPalabrasPosX[p]+gr, miPalabrasPosY[p]-gr);
    miPalabrasPosY[p] = miPalabrasPosY[p]+(round(random(5, 20)));
    rotate(radians(miPalabrasPosX[p]+gr));
  }
 }
//}
