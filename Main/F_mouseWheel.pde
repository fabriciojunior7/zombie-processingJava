void mouseWheel(MouseEvent event){
  
  inventario += event.getCount();
  if(inventario < 1){
    inventario = 4;
  }
  else if(inventario > 4){
    inventario = 1;
  }
  print(inventario);
  
}