cauldren c1;
cat cat1;
potions p1;

potions[] potions = new potions[1];

void setup(){
  size(400, 400);
  rectMode(CORNER);
  
    c1 = new cauldren();
  cat1 = new cat();
  p1 = new potions();
  
  for (int i = 0; i < potions.length; i++) {
    potions[i] = new potions();
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

  

  
  cat1.display();
  c1.display();
 
  
  for (int i = 0; i < potions.length; i++) {
    potions[i].display();
    potions[i].update();
  }
  
}
