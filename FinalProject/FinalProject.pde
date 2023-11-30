cauldren c1;
cat cat1;

void setup(){
  size(400, 400);
  rectMode(CORNER);
}

void draw(){
  background(255);
  
  c1 = new cauldren();
  cat1 = new cat();
  
  cat1.display();
  c1.display();
  
  
  
}
