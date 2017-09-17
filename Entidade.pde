class Entidade{
//Atributos
  float x, y;
  int largura, altura;
  color cor;
  PImage imagem;
  
//Construtor
  public Entidade(){
    this.largura = 20;
    this.altura = 20;
    this.x = 250 - this.largura/2;
    this.y = 250 - this.altura/2;
    this.cor = color(255, 0, 0);
  }
  
  public Entidade(PImage imagem){
    this.largura = 20;
    this.altura = 20;
    this.x = 250 - this.largura/2;
    this.y = 250 - this.altura/2;
    this.cor = color(0, 0, 0);
    this.imagem = imagem;
  }
  
//Metodos
  void desenhar(){
    if(this.imagem != null){
      image(this.imagem, this.x, this.y, this.largura, this.altura);
      fill(this.cor);
      rect(this.x, this.y, this.largura, this.altura);
    }
    else{
      noStroke();
      fill(this.cor);
      rect(this.x, this.y, this.largura, this.altura);
    }
  }
  
  

}