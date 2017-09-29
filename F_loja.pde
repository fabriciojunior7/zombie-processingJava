IntList b1 = new IntList(4);
IntList b2 = new IntList(4);
IntList b3 = new IntList(4);

void loja(){
  //Configuracoes Iniciais
  b1.append(25);
  b1.append(100);
  b1.append(botao1Imagem.width);
  b1.append(botao1Imagem.height);
  b2.append(25);
  b2.append(145);
  b2.append(botao2Imagem.width);
  b2.append(botao2Imagem.height);
  b3.append(25);
  b3.append(190);
  b3.append(botao2Imagem.width);
  b3.append(botao2Imagem.height);
  
  p1.esquerda(false);
  p1.direita(false);
  p1.cima(false);
  p1.baixo(false);
  
  //Desenhar
  background(80);
  textSize(40);
  text("===== Loja =====", 35, 40);
  
  //Comprar Balas
  image(botao1Imagem, b1.get(0), b1.get(1));
  //Comprar Caixas
  image(botao2Imagem, b2.get(0), b2.get(1));
  //Comprar Vidas
  image(botao3Imagem, b3.get(0), b3.get(1));
  
  
  
  barraDeStatus();
  
}