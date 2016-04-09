
// Declaro un carro
Car miVochito;
Car miFerrari;

void setup() {
  size(500, 500);
  
  // Lo creo
  miVochito = new Car(0, 250, 30, color(125, 84, 224), 1);
  miFerrari = new Car(50, 40, 70, color(255, 0, 0), 4);
}

void draw() {
  background(0);
  
  miVochito.render();
  miVochito.move();
  
  miFerrari.render();
  miFerrari.move();
}