
class Eye {

  PVector pos;
  PVector sight;
  float size;

  Eye(float x, float y, float size) {
    this.pos = new PVector(x, y);

    this.sight = new PVector(1, 0);
    this.sight.normalize();
    this.sight.mult(size / 2);

    this.size = size;
  }

  void lookAt(float x, float y) {
    this.sight = new PVector(x - this.pos.x, y - this.pos.y);
    this.sight.normalize();
    this.sight.mult(size / 2);
  }

  void render() {
    stroke(0);
    fill(255);
    ellipse(this.pos.x, this.pos.y, this.size, this.size);
    
    noStroke();
    fill(0);
    ellipse(this.pos.x + (this.sight.x * 0.4), this.pos.y + (this.sight.y * 0.4), this.size / 2, this.size / 2);
    fill(255);
    ellipse(this.pos.x + (this.sight.x * 0.6), this.pos.y + (this.sight.y * 0.6) - this.size / 20, this.size / 10, this.size / 10);
  }
}