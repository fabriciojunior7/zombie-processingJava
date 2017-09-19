void barraDeVida(Entidade entidade){
  
  int larguraBarra = round(3*entidade.vidas);
  int alturaBarra = 3;
  float xBarra = entidade.x-3;
  float yBarra = entidade.y-8;
  color corBarra = color(abs(10-entidade.vidas)*30, 255-abs(10-entidade.vidas)*30, 0);
  
  noStroke();
  fill(corBarra);
  rect(xBarra, yBarra, larguraBarra, alturaBarra);

}