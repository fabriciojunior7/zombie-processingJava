void barraDeStatus(){

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

}