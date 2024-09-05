import 'package:api_prices/main_screen.dart';
import 'package:api_prices/network/dio_helper.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
