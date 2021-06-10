import 'package:flutter/material.dart';
import 'package:flutter_state_demo/models/count_model_notifier.dart';
import 'package:provider/provider.dart';

class ProviderWidgetNotifier extends StatelessWidget {
  const ProviderWidgetNotifier({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider')),
      body: ChangeNotifierProvider(
        create: (_) => CountModelNotifier(),
        child: Column(
          children: [
            Builder(builder: (context) {
              CountModelNotifier _model =
                  Provider.of<CountModelNotifier>(context);
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  color: Colors.lightBlueAccent,
                  child: Text('当前是：${_model.count}'));
            }),
            Consumer<CountModelNotifier>(builder: (context, model, child) {
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
            Consumer<CountModelNotifier>(builder: (context, model, child) {
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
