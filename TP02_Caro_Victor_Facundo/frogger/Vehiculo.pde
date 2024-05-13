class Vehiculo {
  float x, y;
  float velocidad;
  PImage imagen;

  Vehiculo(float x, float y, float velocidad, PImage imagen) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.imagen = imagen;
  }

  void mover() {
    x += velocidad;
    if (x > width) {
      x = -imagen.width; // Reinicia la posición del vehículo cuando sale de la pantalla
    }
  }

  void mostrar() {
    image(imagen, x, y);
  }
}
