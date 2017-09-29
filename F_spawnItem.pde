void spawnItem(float x, float y){

  int spawn = round(random(1, 100));
  int tipo = round(random(1, 100));
  
  if(spawn <= 40){
    if(tipo <= 25){
      itens.add(new Item(1, x, y));
    }
    else{
      itens.add(new Item(2, x, y));
    }
  }
  
}