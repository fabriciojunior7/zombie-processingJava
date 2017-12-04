void cadaCaixa(){
  
  String side;
  boolean collidePlayer = false, collideZombie = false;
  float distX, distY;
  
  p1.collideEsquerda = false;
  p1.collideDireita = false;
  p1.collideBaixo = false;
  p1.collideCima = false;
  
  for(int i=0; i<caixas.size(); i++){
    
    //Colisao Player
    if(collidePlayer == false){
      collidePlayer = collideRect(p1, caixas.get(i));
    }
    
    if(collidePlayer == true && p1.collideEsquerda == false && p1.collideDireita == false){
      side = collideSide(p1, caixas.get(i));
      if(side == "esquerda"){
        p1.collideEsquerda = true;
      }
      else if(side == "direita"){
        p1.collideDireita = true;
      }
    }
    if(collidePlayer == true && p1.collideBaixo == false && p1.collideCima == false){
      side = collideSide(p1, caixas.get(i));
      if(side == "baixo"){
        p1.collideBaixo = true;
      }
      else if(side == "cima"){
        p1.collideCima = true;
      }
    }
    
    collidePlayer = false;
    
    //Colisao Zobie
    for(int ii=0; ii<horda.size(); ii++){
      collideZombie = collideRect(caixas.get(i), horda.get(ii));
      if(collideZombie == true){
        horda.get(ii).serEmpurrado(caixas.get(i), horda.get(ii).forcaEmpurrao*2);
        caixas.get(i).vidas--;
        caixas.get(i).levandoDano = true;
      }
    }
    
    caixas.get(i).desenhar();
    caixas.get(i).desgaste();
    
    if(caixas.get(i).vidas <= 0){
      caixas.remove(i);
    }
    
  }
  
  //println(p1.collideEsquerda + "E - " + p1.collideDireita + "D - " + p1.collideBaixo + "B - " + p1.collideCima + "C");
 
}