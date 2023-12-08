//////////////////////////////
//// Mixing Potions Final ////
////// Elizabeth Larkin //////
///////// 991324130 //////////
//////////////////////////////

/////////////////////////////////////////////////////////////////////////////
// click on the potions to mix up something fun! Watch out for the poison! //
/////////////////////////////////////////////////////////////////////////////


//objects
cauldren c1;
cat cat1;
potions p1;
bubbles b1;
orangePotion op1;
greenPotion gp1;
purplePotion pp1;

// boolean statement for start screen and gameover screen
boolean clickedPoison = false;
boolean gameStart = true;


//array for bubbles
bubbles[] bubbles = new bubbles[8];

//setUp
void setup(){
  size(400, 400);
  //modes
  rectMode(CORNER);
  
  //initalize classes
    c1 = new cauldren();
  cat1 = new cat();
  p1 = new potions();
  op1 = new orangePotion();
  gp1 = new greenPotion();
  pp1 = new purplePotion();

  //initialize the smoke bubbles array
  for (int i = 0; i < bubbles.length; i++) { //increment
    bubbles[i] = new bubbles();
  }
}
//draw
void draw(){
  //background
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

  //display objects
  cat1.display();
  c1.display();
  p1.display();
  op1.display();
  gp1.display();
  pp1.display();
 
  // draw and updates the smoke bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].update();
  }
  
  if (gameStart == true) {
    gameStartScreen();
  }
  
  if (clickedPoison == true){
    gameOverScreen();
  }
}

void mousePressed(){
    if (mouseX > 35 && mouseY > 50 && mouseX < 80 && mouseY <90) { //logical
    c1.potionMixture = 1;
    printArray("Keep mixing nyan~~");
    } else if (mouseX > 130 && mouseY > 65 && mouseX < 155 && mouseY < 90) { //conditional
      clickedPoison = true;
      printArray("oh no nyan!");
      } else if (mouseX > 220 && mouseY > 60 && mouseX < 270 && mouseY < 90) {
        c1.potionMixture = 4;
        printArray("Keep mixing nyan~~!");
      } else if (mouseX > 315 && mouseY > 40 && mouseX < 355 && mouseY < 90) {
        c1.potionMixture = 3;
        printArray("keep mixing nyan~~!");
      }
}

void mouseClicked() {
  if (clickedPoison == true) {
    if (mouseX > 150 && mouseY >230 && mouseX < 250 && mouseY < 320) {
      clickedPoison = false;
      c1.potionMixture = 0;
    } 
  }
    if (gameStart == true) {
      if (mouseX > 60 && mouseY > 220 && mouseX < 210 && mouseY < 290) {
        gameStart = false;
      }
    }
  
}

void gameStartScreen(){
  rectMode(CORNER);
   noStroke();
   background(72, 57, 45);
   fill(0);
   circle(310, 280, 80);
   ellipse(310, 390, 80, 180);
   triangle(330, 250, 270, 220, 270, 275);
   triangle(330, 245, 375, 245, 349, 290);
   fill(255, 206, 229);
   triangle(310, 245, 275, 227, 275, 265);
   triangle(350, 250, 368, 250, 350, 280);
   fill(255);
   circle(295, 280, 25);
   circle(325, 287, 25);
   fill(0);
   circle(295, 280, 20);
   circle(325, 287, 20);
   fill(130, 99, 147);
   quad(265, 250, 355, 290, 355, 190, 345, 170);
   triangle(355, 210, 380, 230, 345, 170);
   stroke(130, 99, 147);
   strokeWeight(4);
   line(250, 245, 370, 295);
   stroke(255);
   strokeWeight(1);
   line(280, 295, 255, 290);
   line(283, 300, 260, 302);
   line(335, 300, 360, 298);
   line(333, 305, 355, 310);
   line(295, 300, 300, 305);
   line(300, 305, 305, 300);
   line(305, 300, 310, 305);
   line(310, 305, 315, 300);
   
   noFill();
   stroke(0);
    strokeWeight(15);
    curve(600, 100, 270, 390, 230, 300, -30, 500);
   
   noStroke();
   
   textSize(80);
   fill(255);
   text("MIXING", 75, 100);
   text("POTIONS", 40, 170);
   
   fill(255);
   rect(55, 215, 160, 80);
   fill(130, 99, 147);
   rect(60, 220, 150, 70);
   textSize(40);
   fill(255);
   text("START", 80, 270);
   
}

void gameOverScreen (){
   //background 
   rectMode(CORNER);
   noStroke();
   background(72, 57, 45);
  fill(39, 31, 22);
  rect(0, 90, 400, 15);
  rect(0, 120, 400, 5);
  stroke(39, 31, 22);
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
    fill(121, 82, 82);
    triangle(265, 180, 285, 125, 300, 160);
    fill(0);
    triangle(330, 171, 380, 145, 340, 239);
    fill(121, 82, 82);
    triangle(338, 177, 373, 155, 345, 215);
    
    stroke(183);
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
  
  fill(24, 33, 24);
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
    fill(42, 42, 44, 80);
    circle(100, 100, 150+15*sin(frameCount*.03));
    circle(300, 320, 150+15*sin(frameCount*.03));
    circle(80, 210, 150+15*sin(frameCount*.03));
    circle( 280, 100, 180+15*sin(frameCount*.03));
    circle( 200, 160, 200+15*sin(frameCount*.03));
    circle( 80, 300, 120+15*sin(frameCount*.03));
    circle( 170, 295, 200+15*sin(frameCount*.03));
    circle( 330, 210, 120+15*sin(frameCount*.03));
    circle( 270, 250, 70+15*sin(frameCount*.03));
    circle(170, 45, 80+15*sin(frameCount*.03));
    
    circle(100, 100, 140+15*sin(frameCount*.03));
    circle(300, 320, 140+15*sin(frameCount*.03));
    circle(80, 210, 140+15*sin(frameCount*.03));
    circle( 280, 100, 170+15*sin(frameCount*.03));
    circle( 200, 160, 190+15*sin(frameCount*.03));
    circle( 80, 300, 110+15*sin(frameCount*.03));
    circle( 170, 295, 190+15*sin(frameCount*.03));
    circle( 330, 210, 110+15*sin(frameCount*.03));
    circle( 270, 250, 60+15*sin(frameCount*.03));
    circle(170, 45, 70+15*sin(frameCount*.03));
    
    circle(100, 100, 110+15*sin(frameCount*.03));
    circle(300, 320, 110+15*sin(frameCount*.03));
    circle(80, 210, 110+15*sin(frameCount*.03));
    circle( 280, 100, 140+15*sin(frameCount*.03));
    circle( 200, 160, 160+15*sin(frameCount*.03));
    circle( 80, 300, 80+15*sin(frameCount*.03));
    circle( 170, 295, 160+15*sin(frameCount*.03));
    circle( 330, 210, 80+15*sin(frameCount*.03));
    circle( 270, 250, 40+15*sin(frameCount*.03));
    circle(170, 45, 50+15*sin(frameCount*.03));
    
    circle(100, 100, 60+15*sin(frameCount*.03));
    circle(300, 320, 60+15*sin(frameCount*.03));
    circle(80, 210, 60+15*sin(frameCount*.03));
    circle( 280, 100, 190+15*sin(frameCount*.03));
    circle( 200, 160, 110+15*sin(frameCount*.03));
    circle( 80, 300, 30+15*sin(frameCount*.03));
    circle( 170, 295, 110+15*sin(frameCount*.03));
    circle( 330, 210, 30+15*sin(frameCount*.03));
    circle( 270, 250, 20+15*sin(frameCount*.03));
    circle(170, 45, 20+15*sin(frameCount*.03));
    
    textSize(80);
    fill(255);
    text("Restart?", 70, 200);
    
    fill(255);
    circle(200, 270, 50);
    triangle(195, 246, 170, 240, 175, 270);
    triangle(205, 246, 230, 240, 225, 270);
    fill(250, 182, 182);
    triangle(190, 248, 172, 242, 175, 265);
    triangle(210, 248, 228, 242, 225, 265);
    fill(0);
    circle(190, 270, 15);
    circle(210, 270, 15);
    fill(255);
    circle(190, 270, 10);
    circle(210, 270, 10);
    
    
  }
  
