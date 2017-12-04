void mousePressed(){

  if(pause == false){
    if(mouseButton == 37 && balasRevolver > 0 && inventario == 1){
      balas.add(new Projetil(p1));
      balasRevolver--;
    }
    
    if(mouseButton == 39 && construir == true && caixasRestantes > 0){
      
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
      if(collideCaixa == false && collidePlayer == false && collideZombie == false && mouseX < larguraJogo-10 && mouseY < alturaJogo-10 && caixas.size() < limiteCaixas){
        caixas.add(new Caixa());
        caixasRestantes -= 1;
      }
      
    }
  }
  
  else{
    if(mouseButton == 37){
      boolean collideBotao1 = collidePoint(mouseX, mouseY, b1.get(0), b1.get(1), b1.get(2), b1.get(3));
      boolean collideBotao2 = collidePoint(mouseX, mouseY, b2.get(0), b2.get(1), b2.get(2), b2.get(3));
      boolean collideBotao3 = collidePoint(mouseX, mouseY, b3.get(0), b3.get(1), b3.get(2), b3.get(3));
      boolean collideBotao4 = collidePoint(mouseX, mouseY, b4.get(0), b4.get(1), b4.get(2), b4.get(3));
      if(collideBotao1 && moedas >= 10){
        balasRevolver += 16;
        moedas -= 10;
      }
      else if(collideBotao2 && moedas >= 10){
        caixasRestantes += 5;
        moedas -= 10;
      }
      else if(collideBotao3 && moedas >= 25 && p1.vidas < 10){
        p1.vidas = 10;
        moedas -= 25;
      }
      else if(collideBotao4 && moedas >= 100){
        p1.vidas = 10;
        moedas -= 25;
      }
    }
  }
  
}