void barraDeVida(){

  noStroke();
  fill(abs(10-vidas)*30, 255-abs(10-vidas)*30, 0);
  for(int i=0; i<vidas; i++){
    //int x = 12 * i + 5;
    //int y = 5;
    //rect(x, y, 10, 10);
    rect(p1.x+(i*3)-3, p1.y-8, 3, 3);
  }  

}