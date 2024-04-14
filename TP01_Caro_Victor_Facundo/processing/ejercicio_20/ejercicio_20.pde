void setup(){
  size(440, 420);
  background(#EAE744);
  fill(#FF0000);
  
  int rectanguloAncho=40;
  int rectanguloAlto=20;
  int distanciaX=20;
  int distanciaY=20;
  
  int centroX=rectanguloAncho/2;
  int centroY=rectanguloAlto/2;
  
  for (int x=centroX; x < width - rectanguloAncho; x +=rectanguloAncho + distanciaX){
   for (int y=centroY; y < height - rectanguloAlto; y +=rectanguloAlto + distanciaX){
    rect(x, y, rectanguloAncho, rectanguloAlto);
   }
  }
}
