class Cabeza{
 Transform transform;
 Collider collider;
 float velocidad;
 
 public Cabeza(PVector posicion, float velocidad){
   this.transform = new Transform(posicion, new PVector(1,1));
   this.collider = new Collider(transform, 6);
   this.velocidad = velocidad;
 }

 public void display(){
   rect(this.transform.position.x, this.transform.position.y, 20,20);
 }
 
 boolean Colision(Animal animal){
  float distance = (PVector.dist(this.transform.position, animal.transform.position));
  return distance < this.collider.radius + animal.collider.radius;

 }
 
 public void mover(){
   if (keyPressed) {
    if (key == 'w') this.transform.move(0, -velocidad);
    if (key == 's') transform.move(0, velocidad);
    if (key == 'a') transform.move(-velocidad, 0);
    if (key == 'd') transform.move(velocidad, 0);
    
  }
}
 
 
}
