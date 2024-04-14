int x1= 100;
int y1= 100;
int linkx= x1;
int linky= y1;

int x2= 200;
int y2= 400;
int cofrex= x2;
int cofrey= y2;

void setup(){
  size(720, 720);
  background(#6997F4);

 fill(#49F563);
 ellipse(linkx, linky, 50, 50);

fill(#F4AA26);
  rect(cofrex, cofrey, 50, 50);
  
int catetox= (cofrex - linkx);
int catetoy= (cofrey - linky);

float distancia= pow(pow(catetox,2) + pow(catetoy,2), 0.5);

  println("La distancia para llegar al Cofre es de: " + distancia);
}

void draw(){
  background(#6997F4);
  linkx= mouseX;
  linky= mouseY;
  fill(#F4AA26);
  rect(cofrex, cofrey, 50, 50);
  fill(#49F563);
  ellipse(linkx, linky, 50,50);
}
  
