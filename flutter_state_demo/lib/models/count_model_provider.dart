class CountModelProvider {
  int count;
  CountModelProvider({this.count = 1});

  Future<void> increment() async {
    count++;
    print('计数改变：$count');
  }
}
