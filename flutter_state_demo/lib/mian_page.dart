import 'package:flutter/material.dart';
import 'package:flutter_state_demo/widgets/cell_widget.dart';

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
              child: CellWidget(textArr[index]));
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
