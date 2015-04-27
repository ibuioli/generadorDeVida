//*****************//
//Generador de Vida
//Ejemplo clase genTej
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genTej org;

void setup(){
  size(600, 400);
  noSmooth();
  
  org = new genTej(width, height); //Tamaño del órgano en Pixeles
}

void draw(){
  background(200);
  org.generar(5, 5, 90, 0, 0, 0);
}
