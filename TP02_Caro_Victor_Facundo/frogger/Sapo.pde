class Sapo {
  int x, y;
  PImage frog0;
  PImage frog1;
  PImage frog2;
  
  Sapo(int x, int y) {
    frog0 = loadImage("frog0.png");
    frog1 = loadImage("frog1.png");
    frog2 = loadImage("frog2.png");
    frog0.resize(40, 40);
    frog1.resize(40, 40);
    frog2.resize(40, 40);
  }
  
  void mostrar() {
    if (frameCount % 30 < 10) {
      image(frog0, x, y);
    } else if (frameCount % 30 < 20) {
      image(frog1, x, y);
    } else {
      image(frog2, x, y);
    }
  }
}
