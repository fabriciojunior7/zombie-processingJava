class Zumbie extends Entidade{
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase, aceleracao, vidas;
  int frame, pontos;

//Construtor
  public Zumbie(){
    this.cor = color(0, 255, 0);
    this.velocidadeBase = random(0.1, 0.5);
    this.velocidadeX = 0;
    this.velocidadeY = 0;
    this.aceleracao = 0.05;
    this.forcaEmpurrao = 1;
    this.tipo = round(random(1,2));
    this.imagem = loadImage("imagens/zumbie" + this.tipo + "_1.png");
    this.vidas = round(random(1, 5));
    this.frame = 1;
    if(this.tipo == 1){
      this.largura = 20;
      this.altura = 32;
    }
    else{
      this.largura = 24;
      this.altura = 30;
    }
    float nascerX = random(1);
    float nascerY = random(1);
    float nascerDistancia = 500;
    //X
    if(nascerX <= 0.5){
      this.x = random(-nascerDistancia, -this.largura);
    }
    else{
      this.x = random(larguraJogo, larguraJogo+nascerDistancia);
    }
    //Y
    if(nascerY <= 0.5){
      this.y = random(-nascerDistancia, -this.altura);
    }
    else{
      this.y = random(alturaJogo, alturaJogo+nascerDistancia);
    }
    
    this.pontos = round(this.vidas*10)+round(this.velocidadeBase*10);
  }
  
//Metodos
  void seguirJogador(Jogador j){
    float xTarget = j.x;
    float yTarget = j.y;
    //Eixo X
    if(this.x < xTarget){
      if(this.velocidadeX < this.velocidadeBase){
        this.velocidadeX += this.aceleracao;
      }
      this.x += this.velocidadeX;
    }
    else if(this.x > xTarget){
      if(this.velocidadeX > -this.velocidadeBase){
        this.velocidadeX -= this.aceleracao;
      }
      this.x += this.velocidadeX;
    }
    //Eixo X
    if(this.y < yTarget){
      if(this.velocidadeY < this.velocidadeBase){
        this.velocidadeY += this.aceleracao;
      }
      this.y += this.velocidadeY;
    }
    else if(this.y > yTarget){
      if(this.velocidadeY > -this.velocidadeBase){
        this.velocidadeY -= this.aceleracao;
      }
      this.y += this.velocidadeY;
    }
  }
  
  void animar(){
    
    if(frameCount % round(10/this.velocidadeBase) == 0){
      this.frame++;
      if(this.frame > 2){
        this.frame = 1;
      }
    }
    
    if(this.tipo == 1){
      if(this.frame == 1){
        this.imagem = zumbie1_1Imagem;
      }
      else{
        this.imagem = zumbie1_2Imagem;
      }
    }
    if(this.tipo == 2){
      if(this.frame == 1){
        this.imagem = zumbie2_1Imagem;
      }
      else{
        this.imagem = zumbie2_2Imagem;
      }
    }
    
  }
  
}