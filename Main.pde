//Fabricio Vidal da Costa Junior
//Inicio: 14/09/2017
//Ultima Atualizacao: 17/09/2017
//Fim: ?

Jogador p1;
int numZubies = 6;
int balasRestantes = 25;
int vidas = 10;
int larguraJogo;
int alturaJogo;
//ArrayList<Interge> balasPerdidas = new ArrayList();
IntList balasPerdidas = new IntList();
ArrayList<Zumbie> horda = new ArrayList();
ArrayList<Projetil> balas = new ArrayList();

PImage p1Imagem;
PImage bala1;
//PImage zumbie1Imagem;

void setup(){
  frameRate(60);
  size(500, 550, P2D);
  larguraJogo = width;
  alturaJogo = height - 50;
  
  preload();
  
  p1 = new Jogador(p1Imagem);
  for(int i=0; i<numZubies; i++){
    horda.add(new Zumbie());
  }
  
}