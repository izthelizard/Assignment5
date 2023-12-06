class potions {
  
  PVector location;
  PVector velocity;
  
  float speed = random(0.5, 2);
  
  potions() {
   location = new PVector(random(-50, -150), 70);
   velocity = new PVector(speed, 0);
  }
  
  void update() {
    
    location.add(velocity);
    if (location.x >= 450) {
      location.x = random(-150, -50);
      location.y = 70;
      velocity.x = speed;
    }
    
  }
  
  void display(){
     fill(185, 21, 21);
  circle(location.x, location.y, 40);
  location.x = location.x + speed;

  
  }
  
}
