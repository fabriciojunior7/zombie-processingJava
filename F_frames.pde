int segundos = 60;

void frames(){
  
  if(frameCount % round(2*segundos) == 1){
    for(int i=0; i<taxaZombies; i++){
      horda.add(new Zombie());
    }
    //println(horda.size() + "T - " + zombiesMortos + "M");
  }
  
  if(frameCount % 10 == 0 && mousePressed && mouseButton == 37){
    balas.add(new Projetil(p1));
    balasRestantes--;
  }
  
  if(mousePressed && mouseButton == 39){
    mousePressed();
  }
  
}