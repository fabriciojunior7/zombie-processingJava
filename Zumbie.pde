class Zumbie extends Entidade{
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase, aceleracao;

//Construtor
  public Zumbie(PImage imagem){
    this.cor = color(0, 255, 0);
    this.largura = 32;
    this.altura = 32;
    this.x = random(0, width-this.largura);
    this.y = random(0, height-this.altura);
    this.velocidadeBase = random(0.1, 0.5);
    this.velocidadeX = 0;
    this.velocidadeY = 0;
    this.aceleracao = 0.05;
    this.imagem = imagem;
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
}