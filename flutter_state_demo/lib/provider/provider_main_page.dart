import 'package:flutter/material.dart';
import 'package:flutter_state_demo/widgets/cell_widget.dart';

class ProviderMainPage extends StatelessWidget {
  const ProviderMainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textArr = ['Provider', 'flutter_bloc', 'fish_redux'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'provider/${textArr[index]}');
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
