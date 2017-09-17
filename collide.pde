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