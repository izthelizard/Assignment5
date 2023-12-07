class gameOver {
  
  void display(){
   //background 
   rectMode(CORNER);
   noStroke();
   background(95, 77, 63);
  fill(59, 46, 32);
  rect(0, 90, 400, 15);
  rect(0, 120, 400, 5);
  stroke(59, 46, 32);
  strokeWeight(5);
  line(100, 100, 0, 0);
  line(400, 0, 300, 100);
  strokeWeight(3);
  line(90, 100, 0, 10);
  line(400, 10, 310, 100);
  noStroke();
 
  //cat
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
    
    stroke(250);
    strokeWeight(5);
    line(270, 190, 285, 210);
    line(285, 210, 260, 220);
    line(330, 210, 305, 215);
    line(305, 215, 320, 240);
    //eyes
    fill(0);
    
    stroke(0);
    strokeWeight(15);
    curve(100, 600, 70, 270, 100, 180, -10, 30);
    noStroke();
    
     //cauldren
  fill(45, 49, 54);
  rect(50, 300, 300, 400);
  
  fill(32, 32, 33);
  ellipse(200, 300, 300, 150);
  
  fill(#A1DAEA);
  ellipse(200, 310, 280, 130);
  
  fill(0);
  circle(250, 235, 30);
  circle(320, 260, 30);
    
    //potions
    noStroke();
    fill(76, 157, 89);
    circle(145, 80, 20);
    rect(142, 20, 6, 55);
    fill(227, 155, 87);
    rect(220, 60, 50, 30, 30);
    rect(225, 55, 40, 5);
    fill(185, 21, 21);
    circle(50, 70, 40);
    rect(45, 30, 10, 30);
    fill(132, 62, 180);
    triangle(315, 90, 365, 90, 340, 45);
    quad(350, 65, 355, 80, 368, 70, 360, 60);
  }
  
}
