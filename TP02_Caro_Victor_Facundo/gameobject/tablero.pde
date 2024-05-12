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
