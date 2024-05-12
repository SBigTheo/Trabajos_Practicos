PImage cesped;
PImage arbusto;
PImage meta;
PImage ruta;

PImage auto1;
PImage auto2;
PImage auto3;

void setup() {
  size(700, 800);
  cesped = loadImage("cesped.png");
  cesped.resize(52, 52);
  arbusto = loadImage("arbusto.png");
  arbusto.resize(52, 52);
  meta = loadImage("meta.png");
  meta.resize(52 , 52);
  ruta = loadImage("ruta.png");
  ruta.resize(52, 52);
  
  auto1 = loadImage("auto1.png");
  auto1.resize(50, 50);
  auto2 = loadImage("auto2.png");
  auto2.resize(50, 50);
  auto3 = loadImage("auto3.png");
  auto3.resize(50, 50);
}

void draw() {
  background(200);
}
