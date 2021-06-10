import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textArr = ['provider', 'flutter_bloc', 'fish_redux'];
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, textArr[index]);
            },
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(textArr[index]),
                  Icon(Icons.arrow_right_rounded)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
        itemCount: textArr.length,
      ),
    );
  }
}
