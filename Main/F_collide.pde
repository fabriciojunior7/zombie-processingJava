//Colisao Rect 1
boolean collideRect(float x1, float y1, float largura1, float altura1, float x2, float y2, float largura2, float altura2){
  
  boolean colisao = false;
  float x1Center = x1 + largura1/2;
  float y1Center = y1 + altura1/2;
  float x2Center = x2 + largura2/2;
  float y2Center = y2 + altura2/2;
  float distX = abs(x1Center - x2Center);
  float distY = abs(y1Center - y2Center);
  float somaLarguras = (largura1/2) + (largura2/2);
  float somaAlturas = (altura1/2) + (altura2/2);
  
  if(distX < somaLarguras && distY < somaAlturas){
    colisao = true;
  }
  else{
    colisao = false;
  }
  
  return colisao;
  
}

//Colisao Rect 2
boolean collideRect(Entidade entidade1, Entidade entidade2){
  
  boolean colisao = false;
  float x1Center = entidade1.x + entidade1.largura/2;
  float y1Center = entidade1.y + entidade1.altura/2;
  float x2Center = entidade2.x + entidade2.largura/2;
  float y2Center = entidade2.y + entidade2.altura/2;
  float distX = abs(x1Center - x2Center);
  float distY = abs(y1Center - y2Center);
  float somaLarguras = (entidade1.largura/2) + (entidade2.largura/2);
  float somaAlturas = (entidade1.altura/2) + (entidade2.altura/2);
  
  if(distX < somaLarguras && distY < somaAlturas){
    colisao = true;
  }
  else{
    colisao = false;
  }
  
  return colisao;
  
}

//Colisao Pontos 1
boolean collidePoint(float x1, float y1, Entidade entidade){
  
  boolean colisao = false;
  
  if(x1 > entidade.x && x1 < entidade.x+entidade.largura && y1 > entidade.y && y1 < entidade.y+entidade.altura){
    colisao = true;
  }
  
  return colisao;
  
}

//Colisao Pontos 2
boolean collidePoint(float x1, float y1, float x2, float y2, int largura, int altura){
  
  boolean colisao = false;
  
  if(x1 > x2 && x1 < x2+largura && y1 > y2 && y1 < y2+altura){
    colisao = true;
  }
  
  return colisao;
  
}

//Colisao Lado 1
String collideSide(Entidade entidade, Entidade outro){
  
  String side = "";
  float distX, distY;
  
  distX = abs((entidade.x+entidade.largura/2) - (outro.x+outro.largura/2));
  distY = abs((entidade.y+entidade.altura/2) - (outro.y+outro.altura/2));
  //Eixo X
  if(distX > distY){
    if(entidade.x < outro.x){
      side = "direita";
    }
    else{
      side = "esquerda";
    }
  }
  
  //Eixo Y
  else{
    if(entidade.y < outro.y){
      side = "baixo";
    }
    else{
      side = "cima";
    }
  }





  return side;
  
}