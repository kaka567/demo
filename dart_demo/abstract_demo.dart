main(List<String> args) {
  final dog = Dog();
  print('Name is : ${dog.name}');
  dog.name = 'Dog';
  print('Name is : ${dog.name}');
  dog.Eat();
  dog.Say();
  final cat = Cat();
  print('Name is : ${cat.name}');
  cat.Say();
  print('Name is : ${cat.name}');
  cat.Eat();
}

abstract class Animal {
  String name = 'Animal';
  Eat();
  Say() {
    print('Animal Say');
  }
}

class Dog extends Animal {
  @override
  Eat() {
    print('Dog eat');
  }
}

class Cat implements Animal {
  @override
  Eat() {
    print('Cat Eat');
  }

  @override
  Say() {
    name = 'Cat';
    print('Cat Say');
  }

  @override
  String name;
}
