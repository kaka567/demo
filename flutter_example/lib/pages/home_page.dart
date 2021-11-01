import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final lists = ['可滚动组件：SingleChildScrollView'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, lists[index]);
          },
          child: Container(
            height: 44,
            color: _getRandonColor(),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16),
            child: Text(lists[index]),
          ),
        ),
        itemCount: lists.length,
      ),
    );
  }

  Color _getRandonColor() {
    return Color.fromARGB(
      255,
      Random.secure().nextInt(200),
      Random.secure().nextInt(200),
      Random.secure().nextInt(200),
    );
  }
}
