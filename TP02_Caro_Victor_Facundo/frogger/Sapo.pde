class Sapo {
  int x, y;
  PImage frog0;
  PImage frog1;
  PImage frog2;
  
  Sapo(int x, int y) {
    this.x = x;
    this.y = y;
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
  
  void mover() {
    if (key == 'w' && y > 0) {
      y -= 40;
    } else if (key == 'a' && x > 0) {
      x -= 40;
    } else if (key == 'd' && x < width - 52) {
      x += 40;
    }

    if ((x <= 120 || x <= 280 || x <= 440 || x <= 560) && y <= 0) {
      exit();
    }
  }
}
