void draw(){
  background(0);
  frames();
  if(p1.velocidadeX != 0 || p1.velocidadeY != 0){
    p1.animar();
  }
  p1.movimentar();
  p1.desenhar();
  
  for(int i=0; i<horda.size(); i++){
    horda.get(i).seguirJogador(p1);
    boolean collidePlayer = collideRect(p1, horda.get(i));
    
    if(i < horda.size()){
      for(int ii=i+1; ii<horda.size(); ii++){
        boolean collideZumbie = collideRect(horda.get(i), horda.get(ii));
        if(collideZumbie == true){
          horda.get(i).empurrar(horda.get(ii));
          horda.get(ii).empurrar(horda.get(i));
        }
      }
    }
    
    if(collidePlayer == true){
      p1.empurrar(horda.get(i));
      horda.get(i).empurrar(p1);
      vidas--;
    }
    
    horda.get(i).desenhar();
    horda.get(i).animar();
    
    for(int ii=0; ii<horda.get(i).vidas; ii++){
      noStroke();
      fill(abs(10-horda.get(i).vidas)*30, 255-abs(10-horda.get(i).vidas)*30, 0);
      rect(horda.get(i).x+(ii*3)-3, horda.get(i).y-8, 3, 3);
    }

  }
  
  for(int i=0; i<balas.size(); i++){
    balas.get(i).atirar();
    balas.get(i).checarPosicao();
    balas.get(i).desenhar();
    if(balas.get(i).naTela == false){
      balasPerdidas.append(i);
      
    }
    
    boolean collideBala = false;
    if(balas.get(i).naTela == true){
      for(int ii=0; ii<horda.size(); ii++){
        collideBala = collideRect(balas.get(i), horda.get(ii));
        if(collideBala == true){
          horda.get(ii).vidas -= balas.get(i).dano;
          if(horda.get(ii).vidas <= 0){
            pontos += horda.get(ii).pontos;
            zumbiesMortos++;
            horda.remove(ii);
            if(zumbiesMortos % proximaFase == 0){
              fase++;
              taxaZumbie = round(fase/4)+1;
              println("Fase - " + fase + " Taxa - " + taxaZumbie);
            }
          }
          break;
        }
      }
    }
    else{
      balas.remove(i);
    }
    
    if(collideBala == true){
      balas.remove(i);
    }
    
  }
  
  //Mira
  stroke(255, 255, 255, 40);
  strokeWeight(1);
  line(p1.x+p1.largura/2, p1.y+p1.altura/2, mouseX, mouseY);
  
  //Barra de Vida
  noStroke();
  fill(abs(10-vidas)*30, 255-abs(10-vidas)*30, 0);
  for(int i=0; i<vidas; i++){
    //int x = 12 * i + 5;
    //int y = 5;
    //rect(x, y, 10, 10);
    rect(p1.x+(i*3)-3, p1.y-8, 3, 3);
  }
  
  //Barra Status
  stroke(255, 0, 0);
  strokeWeight(3);
  fill(255);
  rect(2, alturaJogo, larguraJogo-3, 48, 10);
  
  //Balas
  image(bala1, 5, alturaJogo+5);
  fill(110, 110, 0);
  textSize(16);
  text("x" + balasRestantes, 20, alturaJogo+18);
  
  //Pontos
  fill(255, 0, 0);
  textSize(14);
  text("Pontos: " + pontos, 5, alturaJogo+45);
  
  if(vidas <= 0){
    fill(255, 0, 0);
    textSize(50);
    text("Game Over", larguraJogo/2-130, alturaJogo/2);
    noLoop();
  }
}