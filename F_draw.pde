void draw(){
  
  background(10);
  
  frames();
  p1.rodar();
  cadaZumbie();
  cadaBala();
  
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