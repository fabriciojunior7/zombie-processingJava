void draw(){
  
  background(10);
  
  frames();
  p1.rodar();
  cadaZumbie();
  cadaBala();
  cadaCaixa();
  
  //if(caixas.size() > 0){println(collideSide(p1, caixas.get(0)));}
  
  //Mira
  mira();
  
  //Barra de Vida Jogador
  barraDeVida(p1);
  
  //Barra Status
  barraDeStatus();
  
  //GameOver
  if(p1.vidas <= 0){
    gameOver();
  }
  
}