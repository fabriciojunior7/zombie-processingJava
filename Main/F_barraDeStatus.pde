void barraDeStatus(){

  stroke(255, 0, 0);
  strokeWeight(1);
  fill(255, 255, 255);
  //rect(2, alturaJogo, larguraJogo-3, 48, 10);
  rect(0, alturaJogo+1, larguraJogo-1, 48, 5);
  
  //Moedas
  image(moeda1_1Imagem, 5, alturaJogo+33);
  fill(110, 110, 0);
  textSize(16);
  text("x" + moedas, 20, alturaJogo+45);
  
  //Caixas
  image(caixa1BaseImagem, 65, alturaJogo+5);
  fill(110, 110, 0);
  textSize(16);
  text("x" + caixasRestantes, 85, alturaJogo+18);
  
  //Pontos
  fill(255, 0, 0);
  textSize(14);
  text("Pontos: " + pontos, 65, alturaJogo+45);
  
  //Inventario
  if(inventario == 1){
    fill(220, 220, 10);
    rect(200, alturaJogo+5, 40, 40);
    fill(120);
    rect(240, alturaJogo+5, 40, 40);
    rect(280, alturaJogo+5, 40, 40);
    rect(320, alturaJogo+5, 40, 40);
  }
  else if(inventario == 2){
    fill(120);
    rect(200, alturaJogo+5, 40, 40);
    fill(220, 220, 10);
    rect(240, alturaJogo+5, 40, 40);
    fill(120);
    rect(280, alturaJogo+5, 40, 40);
    rect(320, alturaJogo+5, 40, 40);
  }
  else if(inventario == 3){
    fill(120);
    rect(200, alturaJogo+5, 40, 40);
    rect(240, alturaJogo+5, 40, 40);
    fill(220, 220, 10);
    rect(280, alturaJogo+5, 40, 40);
    fill(120);
    rect(320, alturaJogo+5, 40, 40);
  }
  else if(inventario == 4){
    fill(120);
    rect(200, alturaJogo+5, 40, 40);
    rect(240, alturaJogo+5, 40, 40);
    rect(280, alturaJogo+5, 40, 40);
    fill(220, 220, 10);
    rect(320, alturaJogo+5, 40, 40);
  }
  
  image(revolverImagem, 203, alturaJogo+2);
  image(metralhadoraImagem, 245, alturaJogo+2);
  //Balas
  //image(bala1Imagem, 5, alturaJogo+5);
  //fill(110, 110, 0);
  fill(0);
  textSize(12);
  text("x" + balasRevolver, 207, alturaJogo+40);
  
  //F3
  if(debug == true){
    //Fase
    textSize(14);
    fill(0, 255, 0, 125);
    text("Fase: " + fase, 0, 12);
    
    //Horda
    text("Horda: " + horda.size(), 0, 30);
    
    //Zombies Mortos
    text("Zobies Mortos: " + zombiesMortos, 0, 52);
    
    //Zombies Mortos
    text("Taxa: " + float(taxaZombies)/tempoNascerZombie + " z/s", 0, 74);
  }

}