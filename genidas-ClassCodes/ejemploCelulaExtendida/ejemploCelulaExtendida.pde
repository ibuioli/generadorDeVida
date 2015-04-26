//*****************//
//Generador de Vida
//Ejemplo clase genCellX
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genCellX org;

void setup(){
  noSmooth();
  
  org = new genCellX(2); //Número de Núcleos como valor inicial
}

void draw(){
  background(200);
  org.generar(4, 10, 70, 360, 60, 20, true);
}
