PImage fondo;
PImage naveIMG;
PImage asteroide;
PImage naveEnemigo;

Nave nave;

void setup() {
    size(800, 600);
    fondo = loadImage("fondo.png");
    fondo.resize(800, 600);
    naveIMG = loadImage("nave.png");
    naveIMG.resize(150, 150);
    asteroide = loadImage("asteroide.png");
    naveEnemigo = loadImage("naveEnemigo.png");
}
