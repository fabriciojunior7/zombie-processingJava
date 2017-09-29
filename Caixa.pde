class Caixa extends Entidade{

  //Atributos
  float vidasMax;
  
  //Construtor 1
  public Caixa(){
    this.x = mouseX-((mouseX-16)%32)-6;
    this.y = mouseY-((mouseY-16)%32)-6;
    this.largura = 32;
    this.altura = 32;
    this.imagem = caixa1_100Imagem;
    this.forcaEmpurrao = 0;
    this.vidasMax = 250;
    this.vidas = this.vidasMax;
  }
  
  //Construtor2
  public Caixa(int x, int y){
    this.x = x;
    this.y = y;
    this.largura = 32;
    this.altura = 32;
    this.imagem = caixa1_100Imagem;
    this.forcaEmpurrao = 0;
    this.vidasMax = 250;
    this.vidas = this.vidasMax;
  }
  
  //Desgaste
  void desgaste(){
    if(this.vidas/this.vidasMax*100 <= 10){
      this.imagem = caixa1_10Imagem;
    }
    else if(this.vidas/this.vidasMax*100 <= 25){
      this.imagem = caixa1_25Imagem;
    }
    else if(this.vidas/this.vidasMax*100 <= 50){
      this.imagem = caixa1_50Imagem;
    }
    else if(this.vidas/this.vidasMax*100 <= 75){
      this.imagem = caixa1_75Imagem;
    }
  }

}