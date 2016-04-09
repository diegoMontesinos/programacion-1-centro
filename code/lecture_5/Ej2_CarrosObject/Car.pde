
class Car {

  // Datos
  int posX;
  int posY;
  int size;
  int colorCar;
  int speed;

  // Constructor
  Car(int posX, int posY, int size, int colorCar, int speed) {
    this.posX = posX;
    this.posY = posY;
    this.size = size;
    this.colorCar = colorCar;
    this.speed = speed;
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