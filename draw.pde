void draw(){
  background(0);
  p1.movimentar();
  p1.desenhar();
  
  //for(Zumbie z : horda){
  for(int i=0; i<horda.size(); i++){
    horda.get(i).seguirJogador(p1);
    horda.get(i).desenhar();
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
    }
  }
  
  for(int i=0; i<balas.size(); i++){
    balas.get(i).atirar();
    balas.get(i).checarPosicao();
    balas.get(i).desenhar();
    if(balas.get(i).naTela == false){
      balasPerdidas.append(i);
      
    }
  }
  
  stroke(255, 255, 255, 40);
  strokeWeight(1);
  line(p1.x+p1.largura/2, p1.y+p1.altura/2, mouseX, mouseY);
  
  fill(255);
  text(balasRestantes, 5, 15);
  
  //Barra Status
  stroke(255, 0, 0);
  strokeWeight(3);
  fill(255);
  rect(2, alturaJogo, larguraJogo-3, 48, 10);
}