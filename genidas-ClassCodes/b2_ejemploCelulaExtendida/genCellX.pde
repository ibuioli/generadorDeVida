class genCellX {
  genVida membrana, nucleo;
  ArrayList<genVida> nucleos = new ArrayList<genVida>();
  float[] xs, ys;

  int cel, tam, p, cant, x, y;
  color ch, cs, cb;
  boolean ani;

  genCellX(int cant_) {
    cant = cant_;

    membrana = new genVida();
    nucleo = new genVida();

    for (int i=0; i < cant; i++) {
      nucleos.add(new genVida());
    }
    
    xs = new float[cant];
    ys = new float[cant];
    
    for (int i=0; i < cant; i++) {
      xs[i] = random(-1, 1);
      ys[i] = random(-1, 1);
    }
  }

  void generar(int cel_, int tam_, int p_, color ch_, color cs_, color cb_, boolean ani_) {
    cel = cel_;
    tam = tam_;
    p = p_;
    ch = ch_;
    cs = cs_;
    cb = cb_;
    ani = ani_;

    membrana.generar(cel, tam*2, p/2, ch, constrain(cs-20, 0, 100), constrain(cb+30, 0, 100));

    for (int i = 0; i < nucleos.size (); i++) {
      pushMatrix();
      if (ani) {
        translate(tam*cel/2+random(-random(tam*cel/4,tam*cel/2),random(tam*cel/4,tam*cel/2)), tam*cel/2+random(-random(tam*cel/4,tam*cel/2),random(tam*cel/4,tam*cel/2)));
        translate(xs[i]*(tam*cel)/2, ys[i]*(tam*cel)/2);  
    } else {
        translate((tam*cel)/2, (tam*cel)/2);
        translate(xs[i]*(tam*cel)/2, ys[i]*(tam*cel)/2);
      }
      genVida nucleo = nucleos.get(i);
      nucleo.generar(cel, tam, p, ch+i*2, cs, cb+i*2);
      popMatrix();
    }
  }
}

