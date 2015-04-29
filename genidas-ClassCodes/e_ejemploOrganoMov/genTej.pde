class genTej {
  ArrayList<genCell> celulas = new ArrayList<genCell>();

  int[] posX, posY;
  float cel, tam; 
  int p, an, al;
  color ch, cs, cb;

  genTej(int an_, int al_) {
    an = an_;
    al = al_;

    posX = new int[an];
    posY = new int[al];

    for (int x = 0; x < an; x++) {
      posX[x] = x;
    }
    for (int y = 0; y < al; y++) {
      posY[y] = y;
    }

    for (int i=0; i < an*al; i++) {
      celulas.add(new genCell());
    }
  }

  void generar(float cel_, float tam_, int p_, color ch_, color cs_, color cb_) {
    cel = cel_;
    tam = tam_;
    p = p_;
    ch = ch_;
    cs = cs_;
    cb = cb_;

    for (int x=0; x < an; x++) {
      for (int y=0; y < al; y++) {
        pushMatrix();
        translate(2*tam*cel*posX[x], 2*tam*cel*posY[y]);
        genCell celula = celulas.get(x*y);
        celula.generar(cel, tam, p, ch, cs, cb);
        popMatrix();
      }
    }
  }
}

