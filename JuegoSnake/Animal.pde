abstract class Animal{
 //protected int tiempoEliminacion;
 protected int puntaje;
 int tamanio = 20;
 color colorear;
 Transform transform;
 Collider collider;
 
 public Animal(PVector posicion, int puntaje, color colorear){
   this.puntaje = puntaje;
   this.tamanio = 20;
   this.colorear = colorear;
   this.transform = new Transform(posicion, new PVector(1,1));
   this.collider = new Collider(transform, (20));
 }
 
 public void display(){
   fill(colorear);
   rect(this.transform.position.x+tamanio/2, this.transform.position.y+tamanio/2, tamanio, tamanio);
 }
 
 
  
}
