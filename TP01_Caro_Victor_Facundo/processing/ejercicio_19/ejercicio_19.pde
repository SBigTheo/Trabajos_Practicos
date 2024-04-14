int lineax;
int lineay;
int elipsex;
int elipsey;
int velocidad;

void setup() {
  size(400, 400);
  lineax= 0;
  lineay= 0;
  elipsex= width / 2;
  elipsey= 40;
  velocidad= 2;
}

void draw() {
  background(0);
  line(lineax, lineay, width, lineay);
  ellipse(elipsex, lineay + elipsey, 80, 80);
  
  lineay += velocidad;
  
  if (lineay >= height || lineay <= 0) {
    velocidad *= -1;
  }
}
