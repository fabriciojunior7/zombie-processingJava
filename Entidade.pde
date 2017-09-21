class Entidade{
//Atributos
  float x, y, forcaEmpurrao, vidas;
  int largura, altura, tipo, ajusteImagemX, ajusteImagemY, totalFrames;
  color cor;
  PImage imagem;
  boolean collideEsquerda, collideDireita, collideCima, collideBaixo;
  
//Construtor
  public Entidade(){
    this.largura = 20;
    this.altura = 20;
    this.x = 250 - this.largura/2;
    this.y = 250 - this.altura/2;
    this.cor = color(255, 0, 0);
    this.forcaEmpurrao = 5;
    this.tipo = 1;
    this.totalFrames = 0;
  }
  
  public Entidade(PImage imagem){
    this.largura = 20;
    this.altura = 20;
    this.x = 250 - this.largura/2;
    this.y = 250 - this.altura/2;
    this.cor = color(0, 0, 0);
    this.imagem = imagem;
    this.forcaEmpurrao = 5;
    this.tipo = 1;
    this.totalFrames = 0;
  }
  
//Metodos
  void desenhar(){
    if(this.imagem != null){
      noStroke();
      //fill(255);
      //rect(this.x, this.y, this.largura, this.altura);
      image(this.imagem, this.x+this.ajusteImagemX, this.y+this.ajusteImagemY);
    }
    else{
      noStroke();
      fill(this.cor);
      rect(this.x, this.y, this.largura, this.altura);
    }
  }
  
  void serEmpurrado(Entidade outro, float forca){
    
    String side;
    float distX, distY;
    if(this.x > 0 && this.x < larguraJogo && this.y > 0 && this.y < alturaJogo){
      
      side = collideSide(this, outro);
      if(side == "direita"){
        this.x -= forca;
      }
      else if(side == "esquerda"){
        this.x += forca;
      }
      else if(side == "baixo"){
        this.y -= forca;
      }
      else if(side == "cima"){
        this.y += forca;
      }
      
    }
    
  }
  
  

}