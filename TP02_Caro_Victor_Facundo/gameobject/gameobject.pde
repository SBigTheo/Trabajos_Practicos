abstract class GameObject {
  PVector posicion;
  
  GameObject(PVector posicion) {
    this.posicion = posicion;
  }
  
  abstract void display();
}
