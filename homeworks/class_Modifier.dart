void main(List<String> args) {
  Lives live = Cat();

  switch (live) {
    case Dogs():
      print("Dogss");
    case Cat():
      print("Catsss");
  }
}

class Lives {}

class Human implements Lives {}

class Plants implements Lives {}

class Dogs extends Lives {}

class Cat extends Lives {}

class Cat1 implements Cat {}
