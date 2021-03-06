import 'package:flutter/material.dart';
import 'package:flutter_state_demo/models/count_model_provider.dart';
import 'package:provider/provider.dart';

class ProviderWidgetProvider extends StatelessWidget {
  const ProviderWidgetProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProviderWidget')),
      body: Provider(
        create: (_) => CountModelProvider(),
        child: Column(
          children: [
            Builder(builder: (context) {
              CountModelProvider _model =
                  Provider.of<CountModelProvider>(context);
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.lightBlueAccent,
                  child: Text('当前是：${_model.count}'));
            }),
            Consumer<CountModelProvider>(builder: (context, model, child) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.lightGreen,
                child: Text(
                  model.count.toString(),
                ),
              );
            }),
            Consumer<CountModelProvider>(builder: (context, model, child) {
              return FlatButton(
                  color: Colors.tealAccent,
                  onPressed: model.increment,
                  child: Icon(Icons.add));
            }),
          ],
        ),
      ),
    );
  }
}
