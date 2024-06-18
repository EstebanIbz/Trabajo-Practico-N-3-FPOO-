class ImageComponent{
  PImage image;
  Transform transform;

  ImageComponent(PImage image, Transform transform) {
    this.image = image;
    this.transform = transform;
  }

  void draw() {
    imageMode(CENTER);
    image(image, transform.position.x, transform.position.y, image.width * transform.scale.x, image.height * transform.scale.y);
  }
}
