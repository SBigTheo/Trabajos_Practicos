PImage cesped;
PImage arbusto;
PImage meta;
PImage ruta;

PImage auto1;
PImage auto2;
PImage auto3;

Escenario escenario;
Sapo sapo;
SpawnerVehiculos spawnerVehiculos;

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
  
  escenario = new Escenario();
  sapo = new Sapo(300, 700);
  spawnerVehiculos = new SpawnerVehiculos(auto1, auto2, auto3);
  spawnerVehiculos.generarVehiculos();
}

void draw() {
  background(200);
  escenario.mostrar();
  spawnerVehiculos.actualizarVehiculos();
  sapo.mostrar();
}

void keyPressed() {
  sapo.mover();
}
