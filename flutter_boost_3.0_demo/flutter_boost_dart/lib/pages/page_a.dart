import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boost/flutter_boost.dart';

class PageA extends StatelessWidget {
  const PageA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Page A'),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          BoostNavigator.instance.push('page_b');
        },
        child: Container(
          child: const Text('点击跳转 Flutter Page B'),
          color: Colors.blue,
          height: 50,
          // alignment: Alignment.center,
        ),
      )),
    );
  }
}
