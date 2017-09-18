int segundos = 60;

void frames(){
  
  if(frameCount % round(2*segundos) == 1){
    for(int i=0; i<taxaZumbie; i++){
      horda.add(new Zumbie());
    }
    println(horda.size() + "T - " + zumbiesMortos + "M");
  }
  
  if(frameCount % 10 == 0 && mousePressed){
    balas.add(new Projetil(p1));
    balasRestantes--;
  }
  
}