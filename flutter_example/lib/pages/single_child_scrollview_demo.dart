import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatefulWidget {
  const SingleChildScrollViewDemo({Key key}) : super(key: key);

  @override
  _SingleChildScrollViewDemoState createState() =>
      _SingleChildScrollViewDemoState();
}

class _SingleChildScrollViewDemoState extends State<SingleChildScrollViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data),),
    );
  }
}
