class Collider{
 Transform transform;
 float radius;
 
 public Collider(Transform transform, float radius){
   this.radius = radius;
 }
 
 public void verificarCollider(Collider otroCollider){
   float distance = (PVector.dist(this.transform.position, otroCollider.transform.position));
   
 }
}
