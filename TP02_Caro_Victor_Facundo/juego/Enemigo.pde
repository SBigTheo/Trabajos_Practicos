class Enemigo implements IDisplayable, IMoveable {
    private PApplet parent;
    private PImage img;
    private float x, y;
    private float speed;

    Enemigo(PApplet parent, PImage img, float x, float y, float speed) {
        this.parent = parent;
        this.img = img;
        this.x = x;
        this.y = y;
        this.speed = speed;
    }

    public void display() {
        parent.image(img, x, y);
    }
    
    public void move() {
      x -= speed;
      if (x + img.width < 0) {
      x = parent.width;
      y = parent.random(parent.height - img.height);
      }
    }
  }
