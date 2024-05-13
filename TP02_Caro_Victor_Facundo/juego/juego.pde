PImage fondo;
PImage naveIMG;
PImage asteroide;
PImage naveEnemigo;

Nave nave;

final float NAVE_SPEED = 4;

void setup() {
    size(800, 600);
    fondo = loadImage("fondo.png");
    fondo.resize(800, 600);
    naveIMG = loadImage("nave.png");
    naveIMG.resize(150, 150);
    asteroide = loadImage("asteroide.png");
    naveEnemigo = loadImage("naveEnemigo.png");
    
    nave = new Nave(this, naveIMG, 50, height / 2, NAVE_SPEED);
}

void draw() {
    background(fondo);
    
    nave.display();
    nave.move();
    nave.readCommand();
}
