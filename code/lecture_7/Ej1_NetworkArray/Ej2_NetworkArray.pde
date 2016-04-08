
// Red
Network net;

void setup() {
  size(500, 500);
  
  // Creamos la red
  net = new Network();
}

void draw() {
  background(255);
  
  // Dibujamos la red y la 
  net.render();
  net.update();
}