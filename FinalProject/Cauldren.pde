class cauldren {
  //get water colour set up for changing
  color water = #A1DAEA;
  color red = #B91515;
  color green = #34B24A;
  color purple = #9165AF;
  color orange = #E39B57;
  
  int potionMixture = 0;
  
  
  void display(){
  rectMode(CORNER);
  noStroke();
  
  fill(45, 49, 54);
  rect(50, 300, 300, 400);
  
  fill(32, 32, 33);
  ellipse(200, 300, 300, 150);
  //switch used for cauldren water
  switch(potionMixture) {
    case 0:
    fill(water);
    break;
    case 1:
    fill(red);
    break;
    case 2:
    fill(green);
    break;
    case 3: 
    fill(purple);
    break;
    case 4:
    fill(orange);
    break;
  }
  ellipse(200, 310, 280, 130);
  
  //cat paws
  fill(0);
  circle(250, 235, 30);
  circle(320, 260, 30);
  }
}
