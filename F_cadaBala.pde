void cadaBala(){
  
  for(int i=0; i<balas.size(); i++){
    balas.get(i).atirar();
    balas.get(i).checarPosicao();
    balas.get(i).desenhar();
    if(balas.get(i).naTela == false){
      balasPerdidas.append(i);
      
    }
    
    boolean collideBala = false;
    if(balas.get(i).naTela == true){
      
      for(int ii=0; ii<horda.size(); ii++){
        
        collideBala = collideRect(balas.get(i), horda.get(ii));
        if(collideBala == true){
          
          horda.get(ii).vidas -= balas.get(i).dano;
          if(horda.get(ii).vidas <= 0){
            
            pontos += horda.get(ii).pontos;
            zombiesMortos++;
            horda.remove(ii);
            if(zombiesMortos % proximaFase == 0){
              
              fase++;
              taxaZombies = round(fase/4)+1;
              
            }
            
          }
          break;
          
        }
   
      }
      
    }
    else{
      balas.remove(i);
    }
    
    if(collideBala == true){
      balas.remove(i);
    }
    
  }
  
}