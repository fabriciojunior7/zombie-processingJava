class Item extends Entidade{

  //Atributos
  int tempoVida, frame;
  
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
      this.tempoVida = 10;
    }
    //Moedas
    else if(this.tipo == 3){
      this.imagem = moeda1_2Imagem;
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
    //Vidas
    if(this.tipo == 1){
      p1.vidas = 10;
    }
    //Balas
    else if(this.tipo == 2){
      if(tipoArma == "revolver"){
        balasRestantes += 16;
      }
      else if(tipoArma == "metralhadora"){
        balasRestantes += 30;
      }
    }
    //Moedas
    else if(this.tipo == 3){
      moedas++;
    }
    this.tempoVida = 0;
  }
  
  void animar(){
    if(this.tipo == 3){
      int taxaFrames = 5;
      if(frameCount % taxaFrames == 0){
        this.frame++;
        if(this.frame > 4){
          this.frame = 1;
        }
      }
      
      if(this.frame == 1){
        this.imagem = moeda1_1Imagem;
      }
      else if(this.frame == 2){
        this.imagem = moeda1_2Imagem;
      }
      else if(this.frame == 3){
        this.imagem = moeda1_3Imagem;
      }
      else if(this.frame == 4){
        this.imagem = moeda1_2Imagem;
      }
    }
  }
  
}

// 1 = Vidas