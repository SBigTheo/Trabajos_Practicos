String consola= "Ingresa tu nombre:";
String nombre= "";
String saludo= "";

void setup() {
  size(360, 360);
  println(consola);
}

void draw() {
  background(0);
  text(saludo, 25, 25);
  textSize(12);
}

void keyPressed() {
  nombre += key;
  println(nombre);
  
  if (key == '\n'){ 
    saludo = "¡Hola " + nombre + "!";
    println(saludo);
  }
}
