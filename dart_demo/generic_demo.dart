/// 泛型
main(List<String> args) {
  print('泛型方法1：${testMethod1<int>(123)}}');
  print('泛型方法2：${testMethod2<String>('Jack')}');

  final array = MyArray<String>();
  // array.add(1); //会报错
  array.add('Harry');
  print('泛型类：${array.value}');
}

String testMethod1<T>(T name) {
  return name.toString();
}

T testMethod2<T>(T name) {
  return name;
}

class MyArray<T> {
  List _list = List<T>();
  void add<T>(T value) {
    _list.add(value);
  }

  get value {
    return _list;
  }
}

abstract class Storage<T> {
  Map map = Map();
  void set(String key, T value);
  void get(String key);
}

class Cache<T> implements Storage<T> {
  @override
  void get(String key) {
    print(map[key]);
  }

  @override
  void set(String key, T value) {
    map[key] = value;
  }

  @override
  Map map;
}
