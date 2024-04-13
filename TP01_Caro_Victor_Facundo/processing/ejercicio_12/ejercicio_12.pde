String texto= "ingresa tu nombre:";
String nombre= "";
String saludo= "";

println(texto);

void draw() {
  text(saludo);
  textSixe(12);
}

void keyPressed() {
  nombre += key;
  println(nombre);
  
  if (key == '\n'){ 
    saludo = "hola " + nombre;
    println(mensaje_saludo);
  }
}
