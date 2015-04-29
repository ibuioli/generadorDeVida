class genVida {
  float cel, tam; 
  int p, i;
  byte u;
  color c, ch, cs, cb;

  genVida() {

  }

  void generar(float cel_, float tam_, int p_, color ch_, color cs_, color cb_) {
    cel = cel_;
    tam = tam_;
    p = p_;
    ch = ch_;
    cs = cs_;
    cb = cb_;
    
    pushStyle();
    colorMode(HSB, 360, 100, 100);
    rectMode(CENTER);
    noStroke();
    for (int x=0; x < tam*cel; x+=tam) {
      for (int y=0; y < tam*cel; y+=tam) {
        fill(ch, cs, cb, c);
        rect(x, y, tam, tam);

        u = byte(random(100));

        if (u < p) {
          c = 255;
        } else {
          c = 0;
        }
      }
    }
    popStyle();
  }
}

