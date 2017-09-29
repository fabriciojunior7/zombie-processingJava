void barraDeStatus(){

  stroke(255, 0, 0);
  strokeWeight(3);
  fill(255);
  rect(2, alturaJogo, larguraJogo-3, 48, 10);
  
  //Balas
  image(bala1Imagem, 5, alturaJogo+5);
  fill(110, 110, 0);
  textSize(16);
  text("x" + balasRestantes, 20, alturaJogo+18);
  
  //Moedas
  image(moeda1_1Imagem, 70, alturaJogo+5);
  fill(110, 110, 0);
  textSize(16);
  text("x" + moedas, 85, alturaJogo+18);
  
  //Caixas
  image(caixa1BaseImagem, 130, alturaJogo+5);
  fill(110, 110, 0);
  textSize(16);
  text("x" + caixasRestantes, 150, alturaJogo+18);
  
  //Pontos
  fill(255, 0, 0);
  textSize(14);
  text("Pontos: " + pontos, 5, alturaJogo+45);
  
  //Tamanho Horda
  fill(0, 150, 0);
  //textSize(16);
  text("Horda: " + horda.size(), 250, alturaJogo+18);
  
  //Zombies Mortos
  //textSize(16);
  text("Zobies Mortos: " + zombiesMortos, 250, alturaJogo+42);
  
  //Tamanho Horda
  fill(0, 0, 0);
  //textSize(16);
  text("Fase: " + fase, 390, alturaJogo+18);
  
  //Zombies Mortos
  //fill(0, 255, 0);
  //textSize(16);
  text("Taxa: " + float(taxaZombies)/tempoNascerZombie + " z/s", 390, alturaJogo+42);

}