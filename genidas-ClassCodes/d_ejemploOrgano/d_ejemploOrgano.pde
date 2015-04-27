//*****************//
//Generador de Vida
//Ejemplo clase genOrg
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genOrg org;

void setup(){
  size(600, 400);
  noSmooth();
  
  org = new genOrg(8, 6, 3, 3); //Cantidad de Tejidos en Horizontal, Cantidad de Tejidos en Vertical, Cantidad de Celulas por Tejido en Horizontal, Cantidad de Celulas por Tejido en Vertical
}

void draw(){
  background(200);
  org.generar(8, 1, 70, 0, 0, 0);
}
