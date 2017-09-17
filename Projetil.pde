class Projetil extends Entidade{
//Atributos
  float velocidadeX, velocidadeY, velocidadeBase;
  boolean naTela;

//Construtor
  public Projetil(){
    this.largura = 5;
    this.altura = 5;
    this.velocidadeBase = 5;
    this.cor = color(200, 150, 100);
    this.naTela = true;
  }
  
//Metodos
  void atirar(){
    this.x += this.velocidadeBase;
  }
  
  void checarPosicao(){
    if(this.x < 0 || this.x > width-this.largura || this.y < 0 || this.y > height-this.altura){
      this.naTela = false;
    }
  }
  
}