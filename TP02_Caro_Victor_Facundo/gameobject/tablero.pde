ArrayList<Dado> dados = new ArrayList<Dado>();

void setup() {
  size(400, 400);
  
  Dado dado= new Dado(new PVector(width/2, height/2));
  dados.add(dado);
}

void draw() {
  background(220);
  
  for (Dado dado : dados) {
    dado.display();
  }
}

void mouseClicked() {
  // Si se hace clic en el área del dado se tira
  for (Dado dado : dados) {
    dado.tirar();
  }
}

void keyPressed() {
  // Si se presiona la telca "spacio" se dibuja el resultado por tirada en consola
  if (key == ' ') {
    dibujarResultados();
  }
}

void dibujarResultados() {
  int columna= 0;
  for (int i = 0; i < dados.size(); i++) {
    Dado dado = dados.get(i);
    print(dado.valor + " ");
    columna++;
    if (columna == 4) {
      println();
      columna= 0;
    }
  }
  println();
}
