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
    
    for (int columna = 0; columna < 14; columna++) {
      image(cesped, columna * 50, 7 * 50);
    }
    
    for (int fila = 8; fila <= 13; fila++) {
      for (int columna = 0; columna < 14; columna++) {
        image(ruta, columna * 50, fila * 50);
      }
    }
    
    for (int columna = 0; columna < 14; columna++) {
      image(cesped, columna * 50, 14 * 50);
      image(cesped, columna * 50, 15 * 50);
    }
    
  }
}
