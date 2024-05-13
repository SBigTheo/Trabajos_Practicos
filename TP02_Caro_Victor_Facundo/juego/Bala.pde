class Bala {
    private PApplet parent;
    public float x, y;
    private float speed;

    Bala(PApplet parent, float x, float y) {
        this.parent = parent;
        this.x = x;
        this.y = y;
        this.speed = BALA_SPEED;
    }

    void display() {
        parent.fill(255, 0, 0);
        parent.noStroke();
        parent.ellipse(x, y, 10, 5);
    }

    void move() {
        x += speed;
    }
}
