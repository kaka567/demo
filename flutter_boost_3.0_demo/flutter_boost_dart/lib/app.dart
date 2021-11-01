import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_boost_dart/pages/page_a.dart';
import 'package:flutter_boost_dart/pages/page_b.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Map<String, FlutterBoostRouteFactory> routeMap = {
    '/': (settings, uniqueId) {
      return MaterialPageRoute(
          builder: (context) {
            return Container();
          },
          settings: settings);
    },
    'page_a': (settings, uniqueId) {
      return MaterialPageRoute(
          builder: (context) {
            return const PageA();
          },
          settings: settings);
    },
    'page_b': (settings, uniqueId) {
      return CupertinoPageRoute(
          builder: (context) {
            return const PageB();
          },
          settings: settings);
    }
  };

  Route<dynamic> routeFactory(RouteSettings settings, String uniqueId) {
    FlutterBoostRouteFactory func = routeMap[settings.name];
    if (func == null) return null;
    return func(settings, uniqueId);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterBoostApp(
      routeFactory,
      appBuilder: (Widget home) {
        return MaterialApp(
          // home: home,
          debugShowCheckedModeBanner: true,

          ///必须加上builder参数，否则showDialog等会出问题
          builder: (_, __) {
            return home;
          },
        );
      },
    );
  }
}
