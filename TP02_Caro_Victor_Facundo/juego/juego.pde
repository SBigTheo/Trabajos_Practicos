PImage fondo;
PImage nave;
PImage asteroide;
PImage naveEnemigo;

Nave nave;

void setup() {
    size(800, 600);
    fondo = loadImage("fondo.png");
    fondo.resize(800, 600);
    nave = loadImage("nave.png");
    nave.resize(150, 150);
    asteroide = loadImage("asteroide.png");
    naveEnemigo = loadImage("naveEnemigo.png");
}
