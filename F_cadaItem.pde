void cadaItem(){

  boolean collidePlayer = false;
  for(int i=0; i<itens.size(); i++){
    
    //boolean collideCaixa = false;
    //for(int ii=0; ii<caixas.size(); ii++){
    //  collideCaixa = collideRect(itens.get(i), caixas.get(ii));
    //  if(collideCaixa == true){
    //    itens.get(i).sobrepondo();
    //  }
    //}
    
    //Contador Tempo de Vida
    if(frameCount % 60 == 0){
      itens.get(i).tempoVida -= 1;
    }
    
    itens.get(i).desenhar();
    itens.get(i).animar();
    
    collidePlayer = collideRect(itens.get(i), p1);
    if(collidePlayer == true){
      itens.get(i).coletar();
      itens.remove(i);
    }
    else if(itens.get(i).tempoVida <= 0){
      itens.remove(i);
    }
    
  }
  
}