import 'package:flutter/material.dart';
import 'package:flutter_boost_dart/app.dart';
import 'package:flutter_boost_dart/custom_flutter_binding.dart';

void main() {
  ///这里的CustomFlutterBinding调用务必不可缺少，用于控制Boost状态的resume和pause
  CustomFlutterBinding();
  runApp(const MyApp());
}
