import 'package:flutter/material.dart';

class CellWidget extends StatelessWidget {
  final String text;
  const CellWidget(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          SizedBox(
            width: 32,
          ),
          Icon(Icons.arrow_right_rounded)
        ],
      ),
    );
  }
}
