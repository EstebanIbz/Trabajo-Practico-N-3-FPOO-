class Gestormuralla {
  ArrayList < Muro > muros;
  int numMuros;

  public Gestormuralla(int numMuros) {
    this.numMuros = numMuros;
    this.muros = new ArrayList<Muro>();
    generarMuros();
  }
  
  void generarMuros() {
    for (int i = 0; i < numMuros; i++) {
      muros.add(new Muro(new PVector(random(50,width-50), random(50, height-100)), 30));
    }
  }
  
  void display() {
    for (Muro muro : muros) {
      muro.display();
    }
  }
  
  void actualizarColisiones(Tanque tanque) {
    for (int i = tanque.balas.size() -1; i >=0; i--) {
      println(tanque.balas.size());
      Bala bala = tanque.balas.get(i);
      boolean colision = false;
      for (int j = muros.size() -1; j >= 0; j--){
        Muro muro = muros.get(j);
        if (bala.isColliding(muro) && muro.resistencia > 0){
          muro.reducirResistencia(10);
          colision = true;
          if (muro.resistencia <= 0) {
            muros.remove(j);
          }
          break;
        }
      }
      if (colision) {
       tanque.balas.remove(i); 
      }
    }
    if (muros.size() == 0){
      generarMuros();
    }
  }
}
