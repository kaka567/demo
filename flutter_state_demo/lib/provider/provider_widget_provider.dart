import 'package:flutter/material.dart';
import 'package:flutter_state_demo/models/CountModel.dart';
import 'package:provider/provider.dart';

class ProviderWidgetProvider extends StatelessWidget {
  const ProviderWidgetProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider')),
      body: Provider(
        create: (_) => CountModel(),
        child: Column(
          children: [
            Builder(builder: (context) {
              CountModel _model = Provider.of<CountModel>(context);
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.lightBlueAccent,
                  child: Text('当前是：${_model.count}'));
            }),
            Consumer<CountModel>(builder: (context, model, child) {
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
            Consumer<CountModel>(builder: (context, model, child) {
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
