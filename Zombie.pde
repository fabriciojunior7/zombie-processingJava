class Zombie extends Entidade{
  
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase, aceleracao;
  int frame, pontos;

//Construtor
  public Zombie(){
    this.cor = color(0, 255, 0);
    this.velocidadeBase = random(0.1, 0.5);
    this.velocidadeX = 0;
    this.velocidadeY = 0;
    this.aceleracao = 0.05;
    this.forcaEmpurrao = 1;
    this.tipo = round(random(1, 4));
    //this.tipo = 4;
    this.imagem = loadImage("imagens/zombie" + this.tipo + "_1.png");
    this.vidas = round(random(1, 5));
    this.frame = 1;
    if(this.tipo == 1){
      this.largura = 20;
      this.altura = 32;
      this.ajusteImagemX = -2;
      this.ajusteImagemY = 0;
      this.totalFrames = 2;
    }
    else if(this.tipo == 2){
      this.largura = 24;
      this.altura = 30;
      this.ajusteImagemX = 0;
      this.ajusteImagemY = 0;
      this.totalFrames = 2;
    }
    else if(this.tipo == 3){
      this.largura = 20;
      this.altura = 32;
      this.ajusteImagemX = -4;
      this.ajusteImagemY = 0;
      this.totalFrames = 2;
    }
    else if(this.tipo == 4){
      this.largura = 23;
      this.altura = 32;
      this.ajusteImagemX = 0;
      this.ajusteImagemY = 0;
      this.totalFrames = 4;
    }
    float nascerX = random(1);
    float nascerY = random(1);
    float nascerDistancia = 200;
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
    
    int frameTime;
    if(this.tipo == 4){
      frameTime = round(6/this.velocidadeBase)-4;
    }
    else{
      frameTime = round(6/this.velocidadeBase);
    }
    
    if(frameCount % frameTime == 0){
      this.frame++;
      if(this.frame > this.totalFrames){
        this.frame = 1;
      }
    }
    
    if(this.tipo == 1){
      if(this.frame == 1){
        this.imagem = zombie1_1Imagem;
      }
      else{
        this.imagem = zombie1_2Imagem;
      }
    }
    
    else if(this.tipo == 2){
      if(this.frame == 1){
        this.imagem = zombie2_1Imagem;
      }
      else{
        this.imagem = zombie2_2Imagem;
      }
    }
    
    else if(this.tipo == 3){
      if(this.frame == 1){
        this.imagem = zombie3_1Imagem;
      }
      else{
        this.imagem = zombie3_2Imagem;
      }
    }
    
    else if(this.tipo == 4){
      if(this.frame == 1){
        this.imagem = zombie4_1Imagem;
      }
      else if(this.frame == 2){
        this.imagem = zombie4_2Imagem;
      }
      else if(this.frame == 3){
        this.imagem = zombie4_1Imagem;
      }
      else{
        this.imagem = zombie4_3Imagem;
      }
    }
    
  }
  
}