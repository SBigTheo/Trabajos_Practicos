class Dado extends GameObject {
  int valor;
  
  Dado(PVector posicion) {
    super(posicion);
    this.valor= 1;
  }
  
  void tirar() {
    valor= (int) random(1, 6);
  }
  
  void display() {
    rectMode(CENTER);
    rect(posicion.x, posicion.y, 100, 100, 20);
    puntos(valor, posicion.x, posicion.y);
  }

 void puntos(int count, float x, float y) {
    float tamañoPunto= 2;
    float distancia= 10;
    float X= x - (tamañoPunto + distancia) / 2;
    float Y= y - (tamañoPunto + distancia) / 2;
    
     switch (count) {
      case 1:
        ellipse(x, y, tamañoPunto, tamañoPunto);
        break;
     }
 }
}
