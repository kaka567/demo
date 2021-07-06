import 'package:flutter/material.dart';
import 'package:flutter_net_demo/kk_net/core/kk_net.dart';
import 'package:flutter_net_demo/kk_net/request/test_request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_net_demo'),
      ),
      body: Container(
        color: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final request = TestRequest();
          final result = await KKNet.getInstance().fire(request);
          print('请求结果：$result');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
