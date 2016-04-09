class Network {

  // Propiedades
  Particle p1;
  Particle p2;
  Particle p3;
  Particle p4;

  // Constructor
  Network() {
    this.p1 = new Particle((int) random(0, width), (int) random(0, height), 127);
    this.p2 = new Particle((int) random(0, width), (int) random(0, height), 127);
    this.p3 = new Particle((int) random(0, width), (int) random(0, height), 127);
    this.p4 = new Particle((int) random(0, width), (int) random(0, height), 127);
  }

  // Metodos
  void render() {
    this.p1.render();
    this.p2.render();
    this.p3.render();
    this.p4.render();

    this.connect(this.p1, this.p2);
    this.connect(this.p1, this.p3);
    this.connect(this.p1, this.p4);

    this.connect(this.p2, this.p3);
    this.connect(this.p2, this.p4);

    this.connect(this.p3, this.p4);
  }

  void update() {
    this.p1.update();
    this.p2.update();
    this.p3.update();
    this.p4.update();
  }

  void connect(Particle a, Particle b) {
    if (PVector.dist(a.position, b.position) < 100) {
      stroke(0);
      strokeWeight(1.5);
      line(a.position.x, a.position.y, b.position.x, b.position.y);
    }
  }
}