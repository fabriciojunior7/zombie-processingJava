//Fabricio Vidal da Costa Junior
//Inicio: 14/09/2017
//Ultima Atualizacao: 18/09/2017
//Fim: ?

Jogador p1;
int numZubies = 1;
int balasRestantes = 2000;
int vidas = 10;
int larguraJogo;
int alturaJogo;
int pontos = 0;
int fase = 1, proximaFase = 20, taxaZumbie = round(fase/4)+1;
int zumbiesMortos = 0;
//ArrayList<Interge> balasPerdidas = new ArrayList();
IntList balasPerdidas = new IntList();
ArrayList<Zumbie> horda = new ArrayList();
ArrayList<Projetil> balas = new ArrayList();

PImage p1_1Imagem, p1_2Imagem;
PImage bala1;

PImage zumbie1_1Imagem, zumbie1_2Imagem;
PImage zumbie2_1Imagem, zumbie2_2Imagem;

void setup(){
  frameRate(60);
  size(500, 550, P2D);
  larguraJogo = width;
  alturaJogo = height - 50;
  
  preload();
  
  p1 = new Jogador();
  for(int i=0; i<numZubies; i++){
    horda.add(new Zumbie());
  }
  
}