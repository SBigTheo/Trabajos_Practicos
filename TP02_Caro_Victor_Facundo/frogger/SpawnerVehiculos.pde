class SpawnerVehiculos {
  ArrayList<Vehiculo> vehiculos;
  PImage auto1;
  PImage auto2;
  PImage auto3;

  SpawnerVehiculos(PImage auto1, PImage auto2, PImage auto3) {
    vehiculos = new ArrayList<Vehiculo>();
    this.auto1 = auto1;
    this.auto2 = auto2;
    this.auto3 = auto3;
  }

  void generarVehiculos() {
    for (int i = 0; i < 5; i++) {
      float x = random(-50, 700);
      float y = random(50, 300);
      float velocidad = random(1, 3);
      int tipo = int(random(0, 2));
      PImage imagen = auto1;
      switch (tipo) {
        case 0:
          imagen = auto1;
          break;
        case 1:
          imagen = auto2;
          break;
        case 2:
          imagen = auto3;
          break;
      }
      vehiculos.add(new Vehiculo(x, y, velocidad, imagen));
    }

    for (int i = 0; i < 5; i++) {
      float x = random(-50, 700);
      float y = random(400, 650);
      float velocidad = random(1, 3);
      int tipo = int(random(0, 5));
      PImage imagen = auto1;
      switch (tipo) {
        case 0:
          imagen = auto1;
          break;
        case 1:
          imagen = auto2;
          break;
        case 2:
          imagen = auto3;
          break;
      }
      vehiculos.add(new Vehiculo(x, y, velocidad, imagen));
    }
  }

   void actualizarVehiculos() {
    for (int i = 0; i < vehiculos.size(); i++) {
        Vehiculo vehiculo = vehiculos.get(i);
        vehiculo.mover();
        vehiculo.mostrar();
        
        if (vehiculo.x < sapo.x + 40 && vehiculo.x + 50 > sapo.x && vehiculo.y < sapo.y + 40 && vehiculo.y + 50 > sapo.y) {
            sapo.regresarInicio();
        }
        
      }
    }
  }
