int lineax;
int lineay;
int elipsex;
int elipsey;

void setup() {
  size(400, 400);
  lineax= 0;
  lineay= 0;
  elipsex= width / 2;
  elipsey= 40;
}

void draw() {
  background(0);
  line(lineax, lineay, width, lineay);
  ellipse(elipsex, lineay + elipsey, 80, 80);
  
  if (lineay >= height || lineay <= 0) {
  }
}
