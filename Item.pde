class Item extends Entidade{

  //Atributos
  int tempoVida;
  
  //Metodos
  Item(int tipo, float x, float y){
    //this.x = random(10, larguraJogo-26);
    //this.y = random(10, alturaJogo-26);
    this.x = x;
    this.y = y;
    this.tipo = tipo;
    //Vida
    if(this.tipo == 1){
      this.imagem = vida1Imagem;
      this.tempoVida = 10;
    }
    //Balas
    else if(this.tipo == 2){
      this.imagem = bala1Imagem;
      this.largura = this.imagem.width;
      this.tempoVida = 10;
    }
    this.largura = this.imagem.width;
    this.altura = this.imagem.height;
  }
  
  void rodar(){
    this.tempoVida -= 1;
  }
  
  void sobrepondo(){
    this.x = random(10, larguraJogo-26);
    this.y = random(10, alturaJogo-26);
  }
  
  void coletar(){
    if(this.tipo == 1){
      p1.vidas = 10;
    }
    else if(this.tipo == 2){
      if(tipoArma == "revolver"){
        balasRestantes += 8;
      }
      else if(tipoArma == "metralhadora"){
        balasRestantes += 30;
      }
    }
    this.tempoVida = 0;
  }
  
}

// 1 = Vidas