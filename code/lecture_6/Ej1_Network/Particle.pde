
class Particle {

  PVector position;
  PVector direction;
  float size;

  Particle(int posX, int posY) {
    this.position = new PVector(posX, posY);

    this.direction = new PVector(random(-1, 1), random(-1, 1));
    this.direction.normalize();
    this.direction.mult(random(1.0, 3.0));

    this.size = random(10, 80);
  }

  void render() {
    noStroke();

    // Nucleo
    fill(0);
    ellipse(this.position.x, this.position.y, 8, 8);

    // Aura
    fill(120, 100);
    ellipse(this.position.x, this.position.y, this.size, this.size);
  }

  void update() {
    this.position.add(this.direction);

    this.checkBorders();
  }

  void checkBorders() {
    if (this.position.x > width || this.position.x < 0) {
      this.direction.x *= -1;
    }

    if (this.position.y > width || this.position.y < 0) {
      this.direction.y *= -1;
    }
  }
}