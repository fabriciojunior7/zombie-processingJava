void mira(){

  //stroke(255, 255, 255, 40);
  //strokeWeight(1);
  //line(p1.x+p1.largura/2, p1.y+p1.altura/2, mouseX, mouseY);
  
  //Mira Tiro
  image(mira1, mouseX-8, mouseY-8);
  
  //Mira Construir
  if(dist(mouseX, mouseY, p1.x+p1.largura/2, p1.y+p1.altura/2) < 75){
    construir = true;
    noStroke();
    fill(255, 0, 0 , 25);
    rect(mouseX-((mouseX-16)%32)-6, mouseY-((mouseY-16)%32)-6, 32, 32);
  }
  else{
    construir = false;
  }

}