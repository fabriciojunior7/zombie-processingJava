//Fabricio Vidal da Costa Junior
//Inicio: 14/09/2017
//Ultima Atualizacao: 07/10/2017
//Fim: ?

Jogador p1;
int fps = 60;
int numZombies = 1;
int balasRestantes = 16;
int caixasRestantes = 0;
int moedas = 50;
int larguraJogo;
int alturaJogo;
int pontos = 0;
int fase = 1, proximaFase = 10, taxaZombies = round(fase/4)+1, tempoNascerZombie = 3;
int zombiesMortos = 0;
int limiteCaixas = 150;
IntList balasPerdidas = new IntList();
ArrayList<Zombie> horda = new ArrayList();
ArrayList<Projetil> balas = new ArrayList();
ArrayList<Caixa> caixas = new ArrayList();
ArrayList<Item> itens = new ArrayList();

boolean gameOver = false;
boolean construir = false;
boolean pause = false;
boolean debug = false;

PImage p1_1Imagem, p1_2Imagem;
PImage bala1Imagem;
PImage mira1Imagem;
PImage zombie1_1Imagem, zombie1_2Imagem;
PImage zombie2_1Imagem, zombie2_2Imagem;
PImage zombie3_1Imagem, zombie3_2Imagem;
PImage zombie4_1Imagem, zombie4_2Imagem, zombie4_3Imagem;
PImage caixa1_100Imagem, caixa1_75Imagem, caixa1_50Imagem, caixa1_25Imagem, caixa1_10Imagem;
PImage caixa1BaseImagem;
PImage vida1Imagem;
PImage moeda1_1Imagem, moeda1_2Imagem, moeda1_3Imagem;
PImage botao1Imagem, botao2Imagem, botao3Imagem;

String tipoArma = "revolver";

void setup(){
  frameRate(fps);
  //size(500, 550, P2D);
  size(500, 550);
  larguraJogo = width;
  alturaJogo = height - 50;
  
  preload();
  
  //Jogador
  p1 = new Jogador();
  
  //Zombies
  for(int i=0; i<numZombies; i++){
    horda.add(new Zombie());
  }
  
  //Cenario Inicial
  int numCaixas = round(random(0, 10));
  boolean collidePlayer = false, collideCaixa = false;
  for(int i=0; i<numCaixas; i++){
    int x = 32*round(random(0, 14))+10;
    int y = 32*round(random(0, 14))+10;
    caixas.add(new Caixa(x, y));
    collidePlayer = collideRect(p1, caixas.get(i));
    //Collide Playaer
    while(collidePlayer == true){
      caixas.get(i).x = 32*round(random(0, 14))+10;
      caixas.get(i).y = 32*round(random(0, 14))+10;
      collidePlayer = collideRect(p1, caixas.get(i));
    }
    //Collide Outra Caixa
    for(int ii=0; ii<caixas.size()-1; ii++){
      collideCaixa = collideRect(caixas.get(i), caixas.get(ii));
      while(collideCaixa == true){
        caixas.get(i).x = 32*round(random(0, 14))+10;
        caixas.get(i).y = 32*round(random(0, 14))+10;
        collideCaixa = collideRect(caixas.get(i), caixas.get(ii));
      }
    }
  }
  
}