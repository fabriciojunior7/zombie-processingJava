void draw(){
  background(0);
  p1.movimentar();
  p1.desenhar();
  
  for(Zumbie z : horda){
    z.seguirJogador(p1);
    z.desenhar();
  }
  
  for(int i=0; i<balas.size(); i++){
    balas.get(i).atirar();
    balas.get(i).checarPosicao();
    balas.get(i).desenhar();
    if(balas.get(i).naTela == false){
      balasPerdidas.append(i);
      
    }
  }
  
  //if(balasPerdidas.size() > 5){
  //  for(int i : balasPerdidas){
  //    println(i);
  //    balas.remove(i);
  //  }
  //}
  
  stroke(255);
  line(p1.x+p1.largura/2, p1.y+p1.altura/2, mouseX, mouseY);
  
  fill(255);
  text(balasRestantes, 5, 15);
}