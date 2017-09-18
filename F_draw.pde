void draw(){
  
  background(0);
  
  frames();
  p1.rodar();
  cadaZumbie();
  cadaBala();
  
  //Mira
  mira();
  
  //Barra de Vida
  barraDeVida();
  
  //Barra Status
  barraDeStatus();
  
  //GameOver
  if(vidas <= 0){
    gameOver();
  }
  
}