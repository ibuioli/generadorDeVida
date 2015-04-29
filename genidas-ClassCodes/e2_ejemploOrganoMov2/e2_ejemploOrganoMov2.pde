//*****************//
//Generador de Vida
//Ejemplo Mov Organico
//Version de p5: 2.2.1
//Ignacio Buioli
//*****************//

genOrg org_1, org_2, org_3;
float r, xoff, yoff;

void setup(){
  size(600, 600);
  noSmooth();
  
  org_1 = new genOrg(4, 3, 3, 2);
  org_2 = new genOrg(2, 3, 3, 2);
  org_3 = new genOrg(5, 5, 2, 2);
}

void draw(){
  background(20);
  pushStyle();
  noStroke();
  fill(210);
  ellipse(width/2, height/2, 400, 400);
  popStyle();
  
  xoff = xoff + .018;
  yoff = yoff + .03;
  float nx = noise(xoff) * 100;
  float ny = noise(yoff) * 100;
  
  pushMatrix();
  translate((width/2-150)+nx, (height/2-140)+ny);
  org_1.generar(2, 2+sin(r)/8, 60, 355, 80, 20);
  pushMatrix();
  translate(120, 90);
  org_2.generar(4, 2+sin(r)/8, 20, 355, 75, 40);
  popMatrix();
  pushMatrix();
  translate(20, 40);
  org_3.generar(3, 2+sin(r)/8, 40, 355, 70, 25);
  popMatrix();
  popMatrix();
  
  r += .4;
}
