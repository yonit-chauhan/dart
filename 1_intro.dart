//var & fun can be declared outside of class too

class Bicycle {
  //all var & fun are public by default
  //public private protected keywords are not present here
  int cadence, gear;
  int _speed = 0;
  //var with underscore in prefix are visible only inside file where they are defined

  Bicycle(this.cadence, this.gear);
  //Constructor : this is same as taking arguments & assigning them one by one

  @override
  String toString() => 'Bicycle : $_speed mph';
  //One-Line function example ^^^^
  //OR ${_speed} although {} is used mostly if there is some expression to be evaluated before printing

  int get speed => _speed;
  //By default, Dart provides implicit getters and setters
  //but they can be defined like these too
  //NOTE : speed is the name of function not the variable (notice there is no _underscore)

  void applyBrake(int x) {
    _speed -= x;
  }

  void speedUp(int x) {
    _speed += x;
  }

  void fun() {
    print("Hello World");
  }
}

void main() {
  //OR void main(List<String> args)

  var bike = new Bicycle(2, 1);
  //writing new is optional though

  print(bike); //calls overriden toString method
  bike.speedUp(5);
  bike.applyBrake(4);
  print(bike);

  print(bike.speed); //no need of () for getters
  bike.fun(); //() is required elsewhere
}
