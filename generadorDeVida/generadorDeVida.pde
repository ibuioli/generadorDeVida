//*****************//
//Generador de Vida
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genVida org;

void setup(){
  org = new genVida();
}

void draw(){
  background(200);
  org.generar(4, 10, 50, 0); //Parametros: Celdas, Tamano de Celdas, Procentaje de Color, Color
  
  if(mousePressed){
    noLoop();
  }
}
