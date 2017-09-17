//Fabricio Vidal da Costa Junior
//Inicio: 14/09/2017
//Ultima Atualizacao: 17/09/2017
//Fim: ?

Jogador p1 = new Jogador();
int numZubies = 10;
int balasRestantes = 10;
int vidas = 5;
int larguraJogo;
int alturaJogo;
//ArrayList<Interge> balasPerdidas = new ArrayList();
IntList balasPerdidas = new IntList();
ArrayList<Zumbie> horda = new ArrayList();
ArrayList<Projetil> balas = new ArrayList();

PImage zumbieImagem;

void setup(){
  frameRate(60);
  size(500, 550, P2D);
  larguraJogo = width;
  alturaJogo = height - 50;
  
  preload();
  
  for(int i=0; i<numZubies; i++){
    horda.add(new Zumbie(zumbieImagem));
  }
  
}