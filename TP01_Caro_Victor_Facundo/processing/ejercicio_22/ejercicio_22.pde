void setup(){
  size(600, 600);
  int lineax= 0;
  int lineay= 100;
  int circuloy= 75;
  int distanciacirculo= 30;
  
  do{
    int circulox= distanciacirculo;
    
   do{
     stroke(#3536FF);
     line(lineax, lineay, width, lineay);
     int r = int(random(256));
     int g = int(random(256));
     int b = int(random(256));
     fill(color(r, g, b));
     stroke(0);
     strokeWeight(2);
     ellipse (circulox, circuloy, 50, 50);
     circulox += distanciacirculo * 2;
   }
   
   while(circulox < width);
   lineay += 100;
   circuloy += 200;
  }
  
  while(lineay < height);
}
