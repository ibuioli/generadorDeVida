class genCell{
  genVida membrana, nucleo;
  
  int cel, tam, p;
  color ch, cs, cb;
  
  genCell(){
    membrana = new genVida();
    nucleo = new genVida();
  }
  
  void generar(int cel_, int tam_, int p_, color ch_, color cs_, color cb_){
    cel = cel_;
    tam = tam_;
    p = p_;
    ch = ch_;
    cs = cs_;
    cb = cb_;
    
    membrana.generar(cel, tam*2, p/2, ch, constrain(cs-20, 0, 100), constrain(cb+30, 0, 100));
    pushMatrix();
    translate(tam*cel/2, tam*cel/2);
    nucleo.generar(cel, tam, p, ch, cs, cb);
    popMatrix();
  }
}
