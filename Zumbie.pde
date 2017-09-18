class Zumbie extends Entidade{
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase, aceleracao, vidas;

//Construtor
  public Zumbie(){
    this.cor = color(0, 255, 0);
    this.largura = 20;
    this.altura = 32;
    this.x = random(0, larguraJogo-this.largura);
    this.y = random(0, alturaJogo-this.altura);
    this.velocidadeBase = random(0.1, 1);
    this.velocidadeX = 0;
    this.velocidadeY = 0;
    this.aceleracao = 0.05;
    this.imagem = imagem;
    this.forcaEmpurrao = 1;
    this.tipo = round(random(1,2));
    this.imagem = loadImage("imagens/zumbie" + this.tipo + ".png");
    this.vidas = 2;
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