class Collider {
  Transform transform;
  float radius;

  Collider(Transform transform, float radius) {
    this.transform = transform;
    this.radius = radius;
  }

  boolean isColliding(Collider other) {
    float distance = PVector.dist(this.transform.position, other.transform.position);
    return distance < this.radius + other.radius;
  }
}
