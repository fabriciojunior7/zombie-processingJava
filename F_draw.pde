void draw(){
  
  background(10);
  
  frames();
  cadaCaixa();
  p1.rodar();
  cadaZumbie();
  cadaItem();
  cadaBala();
  //grade();
  
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