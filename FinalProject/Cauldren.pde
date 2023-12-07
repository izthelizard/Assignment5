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
  //attempt 1 at trying to see if i can get the colour to change
  if (potionMixture == 0) {
    fill(water);
  } else if (potionMixture == 1) {
    fill(red);
  } else if (potionMixture == 2) {
    fill(green);
  } else if (potionMixture == 3) {
    fill(purple);
  } else if (potionMixture == 4) {
    fill(orange);
  }
  ellipse(200, 310, 280, 130);
  
  fill(0);
  circle(250, 235, 30);
  circle(320, 260, 30);
  }
}
