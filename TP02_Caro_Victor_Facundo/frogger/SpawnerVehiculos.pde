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
}
