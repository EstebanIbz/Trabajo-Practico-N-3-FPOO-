class Transform {
  PVector position;
  PVector scale;

  Transform(PVector position, PVector scale) {
    this.position = position;
    this.scale = scale;
  }

  Transform() {
    this(new PVector(0, 0), new PVector(1, 1));
  }

  void move(float x, float y) {
    position.add(x, y);
  }
}
