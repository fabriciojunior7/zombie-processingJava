class Entidade{
//Atributos
  float x, y, forcaEmpurrao, vidas;
  int largura, altura, tipo, ajusteImagemX, ajusteImagemY, totalFrames, tempoDanoBase, tempoDano;
  color cor;
  PImage imagem;
  boolean collideEsquerda, collideDireita, collideCima, collideBaixo, levandoDano;
  
//Construtor 1
  public Entidade(){
    this.largura = 20;
    this.altura = 20;
    this.x = 250 - this.largura/2;
    this.y = 250 - this.altura/2;
    this.cor = color(255, 0, 0);
    this.forcaEmpurrao = 5;
    this.tipo = 1;
    this.totalFrames = 0;
    this.tempoDanoBase = 10;
    this.tempoDano = this.tempoDanoBase;
    this.levandoDano = false;
  }
  
  //Construtor 2
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
    this.tempoDanoBase = 10;
    this.tempoDano = this.tempoDanoBase;
    this.levandoDano = false;
  }
  
//Metodos
  void desenhar(){
    if(this.imagem != null){
      noStroke();
      //fill(255);
      //rect(this.x, this.y, this.largura, this.altura);
      if(this.levandoDano == true){
        tint(255, 255-this.tempoDano*20, 255-this.tempoDano*20);
        if(frameCount % 5 == 0){
          this.tempoDano -= 1;
          if(this.tempoDano <= 0){
            this.levandoDano = false;
            this.tempoDano = this.tempoDanoBase;
          }
        }
      }
      else{
        noTint();
      }
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