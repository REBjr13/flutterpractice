class Bicycle {
  //properties
  static const int NUMBER_of_WHEELS = 2;
  static const bool HAS_PEDAL = true;
  String color;
  String brand;
  String model;
  int numberOfGears;

  // ignore: unused_field
  int _currentGear = 1;

  //constructor
  Bicycle(this.color, this.brand, this.model, this.numberOfGears);
//methods
  void brake() {
    print('Brake bicycle');
  }

  void changeGear(int newGear) {
    var x = this;
    x._currentGear = newGear;
    print('Gear has changed to $newGear');
  }

  void ride() {
    print('Ride has started');
  }
}


