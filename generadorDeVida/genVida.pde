class genVida {
  int cel, tam, p, i;
  byte u;
  color c, ct;

  genVida() {

  }

  void generar(int cel_, int tam_, int p_, color ct_) {
    cel = cel_;
    tam = tam_;
    p = p_;
    ct = ct_;
    
    pushStyle();
    noStroke();
    for (int x=0; x < tam*cel; x+=tam) {
      for (int y=0; y < tam*cel; y+=tam) {
        fill(ct, c);
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

