class bubbles { //class

////////////////////////////
// floating smoke bubbles //
////////////////////////////

 //variables and PVectors
   PVector location;
  PVector velocity;
  
  //make it so the bubbles go UP the screen 
  float speed = random(-2, -0.5);
  
  //bubbles refreshes and speed changed
  bubbles() {
   location = new PVector(random(-50, 450), -20);
   velocity = new PVector(0, speed);
  }
  
  // refreshes the bubbles
  void update() {
    
    location.add(velocity);
     if (location.y < -10) {
       location.x = random(-10, 410);
       location.y = 420;
       velocity.y = speed;
    }
    
  }
  
  // apperance and makes the size fluctuate 
  void display(){
     fill(255, 255, 255, 20);
  circle(location.x, location.y, 80+15*sin(frameCount*.03));
  circle(location.x, location.y, 40+15*sin(frameCount*.03));
  
  

  
  }
  
}
