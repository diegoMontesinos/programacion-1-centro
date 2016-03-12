
Car car;

void setup() {
  size(500, 500);
  car = new Car();
}

void draw() {
  background(0);

  car.render();
  car.move();
}

class Car {

  // Datos
  int posX;
  int posY;
  int size;
  int colorCar;
  int speed;

  // Constructor
  Car() {
    posX = 0;
    posY = 250;
    size = 64;
    colorCar = color(200, 200, 0);
    speed = 10;
  }

  // Metodos
  void render() {
    int offset = size/4;

    // Cuerpo principal
    rectMode(CENTER);
    stroke(200);
    fill(colorCar);
    rect(posX, posY, size, size/2);

    // Llantas
    fill(0);
    rect(posX - offset, posY - offset, offset, offset/2);
    rect(posX + offset, posY - offset, offset, offset/2);
    rect(posX - offset, posY + offset, offset, offset/2);
    rect(posX + offset, posY + offset, offset, offset/2);
  }

  void move() {
    posX += speed;

    if (posX > width || posX < 0) {
      speed *= -1;
    }
  }
}