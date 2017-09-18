class Projetil extends Entidade{
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase, dano;
  boolean naTela;

//Construtor
  public Projetil(Entidade jogador){
    this.largura = 3;
    this.altura = 3;
    //this.x = jogador.x + jogador.largura/2 - this.largura/2;
    //this.y = jogador.y + jogador.altura/2 - this.altura/2;
    this.x = jogador.x + jogador.largura/2;
    this.y = jogador.y + jogador.altura/2;
    this.velocidadeBase = 20;
    this.cor = color(200, 150, 100);
    this.naTela = true;
    float x = jogador.x + jogador.largura/2;
    float y = jogador.y + jogador.altura/2;
    float hipotenusa = sqrt(sq(mouseX-x) + sq(mouseY-y));
    float sen = (mouseX-x) / hipotenusa;
    float cos = (mouseY-y) / hipotenusa;
    this.velocidadeX = this.velocidadeBase * sen;
    this.velocidadeY = this.velocidadeBase * cos;
    this.dano = 1;
    
  }
  
//Metodos
  void desenhar(){
    noStroke();
    fill(this.cor);
    ellipse(this.x, this.y, this.largura, this.altura);
  }
  
  void atirar(){
    this.x += this.velocidadeX;
    this.y += this.velocidadeY;
  }
  
  void checarPosicao(){
    if(this.x < 0 || this.x > larguraJogo-this.largura || this.y < 0 || this.y > alturaJogo-this.altura){
      this.naTela = false;
    }
  }
  
}