class sparks {
  
  PVector sparksLocation = new PVector(0,0);
  
  
  
  sparks() {
   sparksLocation.x = random(width);
   sparksLocation.y = random(height);
   
  }
  
  
   
  void display(){
    
    fill(229, 194, 104, 20);
    circle(sparksLocation.x, sparksLocation.y, 10+15*sin(frameCount*.02));
    circle(sparksLocation.x, sparksLocation.y, 6+15*sin(frameCount*.02));
    circle(sparksLocation.x, sparksLocation.y, 2+15*sin(frameCount*.02));
  }
  
}
