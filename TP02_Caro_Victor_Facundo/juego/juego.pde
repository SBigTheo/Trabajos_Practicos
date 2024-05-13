PImage fondo;
PImage naveIMG;
PImage asteroide;
PImage naveEnemigo;

ArrayList<Bala> balas;

Nave nave;

final float NAVE_SPEED = 4;
final int BALA_SPEED = 10;

void setup() {
    size(800, 600);
    fondo = loadImage("fondo.png");
    fondo.resize(800, 600);
    naveIMG = loadImage("nave.png");
    naveIMG.resize(150, 150);
    asteroide = loadImage("asteroide.png");
    naveEnemigo = loadImage("naveEnemigo.png");
    
    balas = new ArrayList<>();
    nave = new Nave(this, naveIMG, 50, height / 2, NAVE_SPEED);
}

void draw() {
    background(fondo);
    
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
