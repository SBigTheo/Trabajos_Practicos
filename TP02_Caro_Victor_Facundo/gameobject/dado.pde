class Dado extends GameObject {
  int valor;
  
  Dado(PVector posicion) {
    super(posicion);
    this.valor= 0;
  }
  
  void tirar() {
    valor= (int) random(1, 6);
  }
  
  void display() {
    rect(posicion.x, posicion.y, 100, 100, 20);
  }
}