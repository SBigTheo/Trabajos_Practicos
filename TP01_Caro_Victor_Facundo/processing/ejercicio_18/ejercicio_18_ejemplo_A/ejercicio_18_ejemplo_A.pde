float a= 2;
float b= 5;
float c= 0;

float discriminante= pow(b,2) - 4 * a * c;

if (discriminante > 0){
  float x1= (-b + sqrt(discriminante)) / (2 * a);
  float x2= (-b - sqrt(discriminante)) / (2 * a);
  println("Las raices son:" + x1 + " y " + x2);
}
else if (discriminante == 0){
  float x= -b / (2 *a);
  println("La raiz doble es: " + x);
}
else{
  println("No hay raices reales.");
}
