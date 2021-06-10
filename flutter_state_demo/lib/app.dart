import 'package:flutter/material.dart';
import 'package:flutter_state_demo/mian_page.dart';
import 'package:flutter_state_demo/provider/provider_main_page.dart';
import 'package:flutter_state_demo/provider/provider_widget_provider.dart';
import 'package:flutter_state_demo/route_constant.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        RouteConstant.provider: (context) => ProviderMainPage(),
        RouteConstant.providerProvider: (context) => ProviderWidgetProvider()
      },
    );
  }
}
