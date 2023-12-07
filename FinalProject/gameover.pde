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
    triangle(251, 200, 285, 115, 310, 161);
    fill(247, 170, 170);
    triangle(265, 180, 285, 125, 300, 160);
    fill(0);
    triangle(330, 171, 380, 145, 340, 239);
    fill(247, 170, 170);
    triangle(338, 177, 373, 155, 345, 215);
    
    stroke(250);
    strokeWeight(5);
    line(270, 190, 285, 210);
    line(285, 210, 260, 220);
    line(330, 210, 305, 215);
    line(305, 215, 320, 240);
    //eyes
    fill(0);
    
    stroke(0);
    strokeWeight(30);
    line(130, 270, 70, 180);
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
    
    //cloud of smoke
    fill(77, 77, 77, 50);
    circle(100, 100, 150);
    circle(300, 320, 150);
    circle(80, 210, 150);
    circle( 280, 100, 180);
    circle( 200, 160, 200);
    circle( 80, 300, 120);
    circle( 170, 295, 200);
    circle( 330, 210, 120);
    circle( 270, 250, 70);
    circle(170, 45, 80);
    
    circle(100, 100, 140);
    circle(300, 320, 140);
    circle(80, 210, 140);
    circle( 280, 100, 170);
    circle( 200, 160, 190);
    circle( 80, 300, 110);
    circle( 170, 295, 190);
    circle( 330, 210, 110);
    circle( 270, 250, 60);
    circle(170, 45, 70);
    
    circle(100, 100, 110);
    circle(300, 320, 110);
    circle(80, 210, 110);
    circle( 280, 100, 140);
    circle( 200, 160, 160);
    circle( 80, 300, 80);
    circle( 170, 295, 160);
    circle( 330, 210, 80);
    circle( 270, 250, 40);
    circle(170, 45, 50);
    
    circle(100, 100, 60);
    circle(300, 320, 60);
    circle(80, 210, 60);
    circle( 280, 100, 190);
    circle( 200, 160, 110);
    circle( 80, 300, 30);
    circle( 170, 295, 110);
    circle( 330, 210, 30);
    circle( 270, 250, 20);
    circle(170, 45, 20);
  }
  
}
