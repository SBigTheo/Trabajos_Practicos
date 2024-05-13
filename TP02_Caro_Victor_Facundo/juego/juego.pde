PImage fondo;
PImage naveIMG;
PImage asteroide;
PImage naveEnemigo;

ArrayList<Bala> balas;
ArrayList<Asteroide> asteroides;

Nave nave;

final float NAVE_SPEED = 4;
final float ASTEROIDE_SPEED = 3;
final int BALA_SPEED = 10;

void setup() {
    size(800, 600);
    fondo = loadImage("fondo.png");
    fondo.resize(800, 600);
    naveIMG = loadImage("nave.png");
    naveIMG.resize(150, 150);
    asteroide = loadImage("asteroide.png");
    asteroide.resize(200, 200);
    naveEnemigo = loadImage("naveEnemigo.png");
    
    balas = new ArrayList<>();
    nave = new Nave(this, naveIMG, 50, height / 2, NAVE_SPEED);
    asteroides = new ArrayList<>();
    asteroides.add(new Asteroide(this, asteroide, width, random(height), ASTEROIDE_SPEED));
}

void draw() {
    background(fondo);
    
    for (int i = asteroides.size() - 1; i >= 0; i--) {
        Asteroide asteroide = asteroides.get(i);
        asteroide.display();
        asteroide.move();
        
        if (asteroide.x + asteroide.img.width < 0) {
            asteroides.remove(i);
        }
    }
    
    nave.display();
    nave.move();
    nave.readCommand();
    
    for (int i = balas.size() - 1; i >= 0; i--) {
        Bala b = balas.get(i);
        b.display();
        b.move();
        
        if (b.x > width) {
            balas.remove(i);
          }
        }
      }
      
    void keyPressed() {
    if (key == ' ') {
        balas.add(new Bala(this, nave.x + naveIMG.width, nave.y + naveIMG.height / 2));
    }
}  
