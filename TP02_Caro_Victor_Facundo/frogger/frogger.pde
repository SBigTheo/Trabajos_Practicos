PImage cesped;
PImage arbusto;
PImage meta;
PImage ruta;



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
}
