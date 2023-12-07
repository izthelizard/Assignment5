//objects
cauldren c1;
cat cat1;
potions p1;
bubbles b1;
orangePotion op1;
greenPotion gp1;
purplePotion pp1;

//array for bubbles
bubbles[] bubbles = new bubbles[8];

void setup(){
  size(400, 400);
  rectMode(CORNER);
  
  //initalize classes
    c1 = new cauldren();
  cat1 = new cat();
  p1 = new potions();
  op1 = new orangePotion();
  gp1 = new greenPotion();
  pp1 = new purplePotion();
  //initialize the smoke bubbles array
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new bubbles();
  }
}

void draw(){
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
  
}
//wip clicking
void mousePressed() {
  
  if (mousePressed) {
    if (mouseX >= 35 && mouseY >= 50 && mouseX <= 80 && mouseY <=90)
    c1.potionMixture = 1;
    printArray("Keep mixing nyan~~");
  }
  
  }
