
class Particle {

  // Caracteristicas
  PVector position;
  PVector direction;
  int colorFill;
  float size;

  // Metodo Constructor
  Particle(int posX, int posY, int colorParticle) {
    this.position = new PVector(posX, posY);

    // Creo la direccion
    this.direction = new PVector(random(-1, 1), random(-1, 1));
    this.direction.normalize();
    this.direction.mult(random(2, 5));
    
    this.colorFill = colorParticle;

    this.size = random(10, 120);
  }

  // Metodo para dibujarse
  void render() {

    // Aura
    fill(colorFill, 100);
    noStroke();
    ellipse(this.position.x, this.position.y, this.size, this.size);

    // Nucleo
    fill(0);
    ellipse(this.position.x, this.position.y, 8, 8);
  }

  // Metodo para actualizarse
  void update() {
    this.position.add(this.direction);
    this.checkBorders();
  }

  void checkBorders() {
    // Checar los bordes
    if (this.position.x > width || this.position.x < 0) {
      this.direction.x *= -1;
    }

    if (this.position.y > height || this.position.y < 0) {
      this.direction.y *= -1;
    }
  }
}