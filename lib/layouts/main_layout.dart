import 'package:flutter/material.dart';
import 'package:roster_web_app/pages/home_page.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top Border
        topBorder(),
        mainContentWindow(),
      ],
    );
  }

//Main window on the right of sidebar for content display
  Expanded mainContentWindow() {
    return const Expanded(
      flex: 100,
      child: MyHomePage(),
    );
  }

//Top border used as a decoration
  Expanded topBorder() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.teal,
      ),
    );
  }
}
