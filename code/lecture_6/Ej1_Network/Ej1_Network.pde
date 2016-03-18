
Network net;

void setup() {
  size(500, 500);
  
  net = new Network();
}

void draw() {
  background(255);
  
  net.render();
  net.update();
}