void keyPressed(){
  
  if(pause == false){
    boolean pressionado = true;
    //Eixo X
    if(keyCode == 65 || keyCode == 37){
      p1.esquerda(pressionado);
    }
    else if(keyCode == 68 || keyCode == 39){
      p1.direita(pressionado);
    }
    
    //Eixo Y
    if(keyCode == 87 || keyCode == 38){
      p1.cima(pressionado);
    }
    else if(keyCode == 83 || keyCode == 40){
      p1.baixo(pressionado);
    }
  
  }
  
  //Atalhos
    if(keyCode == 32){
      if(pause == true){
        pause = false;
      }
      else{
        pause = true;
      }
    }
  
}