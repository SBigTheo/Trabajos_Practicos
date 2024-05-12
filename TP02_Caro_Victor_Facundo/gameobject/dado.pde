class Dado extends GameObject {
  int valor;
  
  Dado(PVector posicion) {
    super(posicion);
    this.valor= 0;
  }
  
  void tirar() {
    valor= (int) random(1, 7);
  }
  
  void display() {
    rectMode(CENTER);
    background (#E80C8C);
    fill(#E89B0C);
    rect(posicion.x, posicion.y, 100, 100, 20);
    fill(0);
    puntos(valor, posicion.x, posicion.y);
  }

 void puntos(int count, float x, float y) {
    float tamañoPunto= 8;
    float distancia= 20;
    float X= x - (tamañoPunto + distancia) / 2;
    float Y= y - (tamañoPunto + distancia) / 2;
    
     switch (count) {
      case 1:
        ellipse(x, y, tamañoPunto, tamañoPunto);
        break;
      case 2:
        ellipse(x - distancia / 2, y - distancia / 2, tamañoPunto, tamañoPunto);
        ellipse(x + distancia / 2, y + distancia / 2, tamañoPunto, tamañoPunto);
        break;
      case 3:
        ellipse(x, y, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y + distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y - distancia, tamañoPunto, tamañoPunto);
        break;
      case 4:
        ellipse(x - distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y + distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y + distancia, tamañoPunto, tamañoPunto);
        break;
      case 5:
        ellipse(x, y, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y + distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y + distancia, tamañoPunto, tamañoPunto);
        break;
      case 6:
        ellipse(x - distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y - distancia, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y, tamañoPunto, tamañoPunto);
        ellipse(x - distancia, y + distancia, tamañoPunto, tamañoPunto);
        ellipse(x + distancia, y + distancia, tamañoPunto, tamañoPunto);
        break;
     }
 }
}
