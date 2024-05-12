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
}
