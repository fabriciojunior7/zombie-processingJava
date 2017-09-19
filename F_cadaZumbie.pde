void cadaZumbie(){
  
  for(int i=0; i<horda.size(); i++){
    horda.get(i).seguirJogador(p1);
    boolean collidePlayer = collideRect(p1, horda.get(i));
    
    if(i < horda.size()){
      for(int ii=i+1; ii<horda.size(); ii++){
        boolean collideZumbie = collideRect(horda.get(i), horda.get(ii));
        if(collideZumbie == true){
          horda.get(i).empurrar(horda.get(ii));
          horda.get(ii).empurrar(horda.get(i));
        }
      }
    }
    
    if(collidePlayer == true){
      p1.empurrar(horda.get(i));
      horda.get(i).empurrar(p1);
      p1.vidas--;
    }
    
    horda.get(i).desenhar();
    horda.get(i).animar();
    
    //Barra de Vida
    barraDeVida(horda.get(i));

  }
  
}