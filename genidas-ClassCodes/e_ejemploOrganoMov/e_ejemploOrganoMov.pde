//*****************//
//Generador de Vida
//Ejemplo Mov Orgánico
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genOrg org_1, org_2, org_3;
float r;

void setup(){
  size(600, 600);
  noSmooth();
  
  org_1 = new genOrg(5, 4, 3, 2);
  org_2 = new genOrg(3, 3, 3, 2);
  org_3 = new genOrg(5, 5, 2, 2);
}

void draw(){
  background(20);
  pushStyle();
  noStroke();
  fill(210);
  ellipse(width/2, height/2, 400, 400);
  popStyle();
  
  pushMatrix();
  translate(width/2-120, height/2-100);
  org_1.generar(3, 2+sin(r)/4, 50, 355, 80, 30);
  pushMatrix();
  translate(90, 30);
  org_2.generar(4, 2+sin(r)/4, 40, 355, 75, 40);
  popMatrix();
  pushMatrix();
  translate(20, 35);
  org_3.generar(4, 2+sin(r)/3, 30, 355, 70, 35);
  popMatrix();
  popMatrix();
  
  r += .1;
}
