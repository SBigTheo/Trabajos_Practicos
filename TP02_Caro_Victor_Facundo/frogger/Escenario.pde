class Escenario {
  void mostrar() {
    for (int fila = 0; fila < 14; fila++) {
      if (fila % 3 == 3) {
        image(arbusto, fila * 50, 0);
      } else if (fila % 3 == 2) {
        image(meta, fila * 50, 0);
      } else {
        image(arbusto, fila * 50, 0);
      }
    }
    
    for (int columna = 1; columna <= 6; columna++) {
      for (int fila = 0; fila < 14; fila++) {
        image(ruta, fila * 50, columna * 50);
      }
    }
    
  }
}
