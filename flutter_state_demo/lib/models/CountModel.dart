class CountModel {
  int count;
  CountModel({this.count = 1});

  Future<void> increment() async {
    count++;
    print('计数改变：$count');
  }
}
