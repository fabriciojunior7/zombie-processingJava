void spawnItem(float x, float y){

  int spawn = round(random(1, 100));
  int tipo = round(random(1, 100));
  
  if(spawn <= 40){
    //Vida
    if(tipo <= 20){
      itens.add(new Item(1, x, y));
    }
    //Balas
    else if(tipo <= 50){
      itens.add(new Item(2, x, y));
    }
    //Moedas
    else{
      itens.add(new Item(3, x, y));
    }
    
  }
  
}