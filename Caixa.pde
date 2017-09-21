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
    this.vidas = 100;
  }
  
  

}