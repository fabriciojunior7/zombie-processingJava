int segundos = 60;

void frames(){
  
  //Mais Zombies
  if(frameCount % round(tempoNascerZombie*segundos) == 1){
    for(int i=0; i<taxaZombies; i++){
      horda.add(new Zombie());
    }
  }
  
  //Metralhadoras
  if(frameCount % 10 == 0 && mousePressed && mouseButton == 37 && tipoArma == "metralhadora"){
    balas.add(new Projetil(p1));
    balasRestantes--;
  }
  
  //Construir
  if(mousePressed && mouseButton == 39){
    mousePressed();
  }
  
  ////Vida Extra
  //if(frameCount % round(30*segundos) == 0){
  //  itens.add(new Item(1));
  //}
  ////Balas Extra
  //if(frameCount % round(15*segundos) == 0){
  //  itens.add(new Item(2));
  //}
  
  
}