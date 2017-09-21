void mousePressed(){

  //println(mouseButton);
  if(mouseButton == 37 && balasRestantes > 0){
    balas.add(new Projetil(p1));
    balasRestantes--;
  }
  
  if(mouseButton == 39 && construir == true){
    
    boolean collideCaixa = false, collidePlayer = false, collideZombie = false;
    
    //Collide Player
    collidePlayer = collideRect(mouseX-((mouseX-16)%32)-6, mouseY-((mouseY-16)%32)-6, 32, 32, p1.x, p1.y, p1.largura, p1.altura);
    
    //CollideCaixa
    if(collidePlayer == false){
      for(int i=0; i<caixas.size(); i++){
        collideCaixa = collideRect(mouseX-((mouseX-16)%32)-6, mouseY-((mouseY-16)%32)-6, 32, 32, caixas.get(i).x, caixas.get(i).y, caixas.get(i).largura, caixas.get(i).altura);
        if(collideCaixa == true || collidePlayer == true){
          break;
        } 
      }
    }
    
    //CollideZombie
    if(collidePlayer == false && collideCaixa == false){
      for(int i=0; i<horda.size(); i++){
        collideZombie = collideRect(mouseX-((mouseX-16)%32)-6, mouseY-((mouseY-16)%32)-6, 32, 32, horda.get(i).x, horda.get(i).y, horda.get(i).largura, horda.get(i).altura);
        if(collideZombie == true || collidePlayer == true){
          break;
        }
      }
    }
    
    //Criar a Caixa
    if(collideCaixa == false && collidePlayer == false && collideZombie == false){
      caixas.add(new Caixa());
    }
    
  }
  
}