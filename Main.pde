//Fabricio Vidal da Costa Junior
//Inicio: 14/09/2017
//Ultima Atualizacao: 17/09/2017
//Fim: ?

Jogador p1 = new Jogador();
int numZubies = 1;
int balasRestantes = 10;
//ArrayList<Interge> balasPerdidas = new ArrayList();
IntList balasPerdidas = new IntList();
ArrayList<Zumbie> horda = new ArrayList();
ArrayList<Projetil> balas = new ArrayList();

PImage zumbieImagem;

void setup(){
  frameRate(60);
  size(500, 500, P2D);
  
  preload();
  
  for(int i=0; i<numZubies; i++){
    horda.add(new Zumbie(zumbieImagem));
  }
  
}