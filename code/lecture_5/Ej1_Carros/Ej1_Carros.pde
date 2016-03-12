
// Posicion de los carros
int posXCar1 = 0;
int posYCar1 = 250;
int sizeCar1 = 64;
int colorCar1 = color(200, 200, 0);
int speedCar1 = 10;

int posXCar2 = 250;
int posYCar2 = 250;
int sizeCar2 = 32;
int colorCar2 = color(0, 200, 0);
int speedCar2 = 10;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  drawCar(posXCar1, posYCar1, sizeCar1, colorCar1);
  drawCar(posXCar2, posYCar2, sizeCar2, colorCar2);

  moveCar1();
}

void drawCar(int x, int y, int size, color c) {
  int offset = size/4;

  // Cuerpo principal
  rectMode(CENTER);
  stroke(200);
  fill(c);
  rect(x, y, size, size/2);

  // Llantas
  fill(0);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
}

void moveCar1() {
  posXCar1 += speedCar1;

  if (posXCar1 > width || posXCar1 < 0) {
    speedCar1 *= -1;
  }
}

void keyPressed() {
  switch(keyCode) {
  case 37:
    posXCar2 -= speedCar2;
    break;
  case 38:
    posYCar2 -= speedCar2;
    break;
  case 39:
    posXCar2 += speedCar2;
    break;
  case 40:
    posYCar2 += speedCar2;
    break;
  }
}