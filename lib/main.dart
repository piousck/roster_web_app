import 'package:flutter/material.dart';
import 'package:roster_web_app/pages/home_page.dart';
import 'package:roster_web_app/widgettest/widget_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyTestWidget()
    );
  }
}

