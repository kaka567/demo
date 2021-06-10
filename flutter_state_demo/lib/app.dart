import 'package:flutter/material.dart';
import 'package:flutter_state_demo/mian_page.dart';
import 'package:flutter_state_demo/provider/provider_main_page.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        'provider': (context) => ProviderMainPage(),
      },
    );
  }
}
