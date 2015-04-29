class genOrg {
  ArrayList<genTej> tejidos = new ArrayList<genTej>();

  int[] posX, posY;
  int[][] por;
  float cel, tam; 
  int p, an, al, cx, cy;
  color ch, cs, cb;

  genOrg(int an_, int al_, int cx_, int cy_) {
    an = an_;
    al = al_;
    cx = cx_;
    cy = cy_;

    posX = new int[an];
    posY = new int[al];
    por = new int[an][al];

    for (int x = 0; x < an; x++) {
      posX[x] = x;
    }
    for (int y = 0; y < al; y++) {
      posY[y] = y;
    }
    for (int x = 0; x < an; x++) {
      for (int y = 0; y < al; y++) {
        por[x][y] = (int)random(-50, 50);
      }
    }

    for (int i=0; i < an*al; i++) {
      tejidos.add(new genTej(cx, cy));
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
        translate(cx*2*tam*cel*posX[x], cy*2*tam*cel*posY[y]);
        genTej tejido = tejidos.get(x*y);
        tejido.generar(cel, tam, p+por[x][y], ch, cs, cb);
        popMatrix();
      }
    }
  }
}

