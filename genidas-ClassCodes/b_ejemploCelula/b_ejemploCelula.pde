//*****************//
//Generador de Vida
//Ejemplo clase genCell
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genCell org;

void setup(){
  org = new genCell();
}

void draw(){
  background(200);
  org.generar(4, 10, 70, 0, 0, 0);
}
