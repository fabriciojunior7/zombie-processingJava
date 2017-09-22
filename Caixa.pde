class Caixa extends Entidade{

  //Atributos
  
  
  //Construtor
  public Caixa(){
    this.x = mouseX-((mouseX-16)%32)-6;
    this.y = mouseY-((mouseY-16)%32)-6;
    this.largura = 32;
    this.altura = 32;
    this.imagem = caixa1Imagem;
    this.forcaEmpurrao = 0;
    this.vidas = 1000;
  }
  
  //Construtor2
  public Caixa(int x, int y){
    this.x = x;
    this.y = y;
    this.largura = 32;
    this.altura = 32;
    this.imagem = caixa1Imagem;
    this.forcaEmpurrao = 0;
    this.vidas = 1000;
  }

}