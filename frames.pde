int segundos = 60;

void frames(){
  
  if(frameCount % round(2*segundos) == 1){
    for(int i=0; i<fase; i++){
      horda.add(new Zumbie());
    }
    println(horda.size() + " - " + zumbiesMortos);
  }
  
}