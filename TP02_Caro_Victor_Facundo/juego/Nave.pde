class Nave implements IDisplayable, IMoveable, IController {
    private PApplet parent;
    private PImage img;
    public float x, y;
    private float speed;
    private boolean moveUp, moveDown, moveLeft, moveRight;

    Nave(PApplet parent, PImage img, float x, float y, float speed) {
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
      if (moveUp && y > 0) y -= speed;
      if (moveDown && y < parent.height - img.height) y += speed;
      if (moveLeft && x > 0) x -= speed;
      if (moveRight && x < parent.width - img.width) x += speed;
    }

    public void readCommand() {
        moveUp = parent.key == 'w';
        moveDown = parent.key == 's';
        moveLeft = parent.key == 'a';
        moveRight = parent.key == 'd';
    }
}
