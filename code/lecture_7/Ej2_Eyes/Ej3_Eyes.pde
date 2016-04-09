
Eye[] eyes;

void setup() {
  size(500, 500);
  smooth();
  
  eyes = new Eye[40];
  for(int i = 0; i < eyes.length; i++) {
    eyes[i] = new Eye(random(width), random(height), random(40, 100)); 
  }
}

void draw() {
  background(100);
  
  for(int i = 0; i < eyes.length; i++) {
    eyes[i].lookAt(mouseX, mouseY);
    eyes[i].render();
  }
}