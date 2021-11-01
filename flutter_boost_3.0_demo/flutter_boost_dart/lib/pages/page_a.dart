import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boost/boost_navigator.dart';
import 'package:flutter_boost/flutter_boost.dart';

class PageA extends StatelessWidget {
  const PageA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Flutter Page A'),
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
          onPressed: () {
            BoostNavigator.instance.pop();
          },
        ),
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
          alignment: Alignment.center,
        ),
      )),
    );
  }
}
