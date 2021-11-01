import 'package:flutter/material.dart';
import 'package:flutter_example/pages/home_page.dart';
import 'package:flutter_example/pages/single_child_scrollview_demo.dart';

class Routes {
  static Map<String, WidgetBuilder> configRoutes() {
    return {
      '/': (context) => HomePage(),
      '可滚动组件：SingleChildScrollView': (context) => SingleChildScrollViewDemo(),
    };
  }
}
