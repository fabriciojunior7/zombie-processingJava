void grade(){

  //Grade
  stroke(255, 255, 255, 50);
  strokeWeight(1);
  for(int i=0; i<16; i++){
    line(10+(i*32), 0, 10+(i*32), alturaJogo);
  }
  for(int i=0; i<16; i++){
    line(0, 10+(i*32), larguraJogo, 10+(i*32));
  }

}