class cat {
  
  /////////////////////
  // black kitty cat //
  /////////////////////
  
  //have it so eyes follow the mouse but stay in a little area
  float catEyeX = constrain(mouseX, 270, 290);
  float catEyeY = constrain(mouseY, 200, 220);
  float catEyeX2 = constrain(mouseX, 305, 325);
  float catEyeY2 = constrain(mouseY, 215, 235);
  
  void display(){
    //cat head
    fill(0);
    circle(300, 210, 100);
    fill(0);
    triangle(251, 200, 270, 130, 310, 161);
    fill(247, 170, 170);
    triangle(260, 180, 272, 140, 300, 160);
    fill(0);
    triangle(330, 171, 380, 180, 340, 239);
    fill(247, 170, 170);
    triangle(338, 177, 372, 185, 350, 215);
    //whites of cats eyes
    fill(250);
    circle(280, 210, 30);
    circle(315, 225, 30);
    //eyes
    fill(0);
    circle(catEyeX, catEyeY, 20);
    circle(catEyeX2, catEyeY2, 20);
    stroke(0);
    strokeWeight(15);
    curve(100, 600, 70, 270, 100, 180, -10, 30);
  }

}
