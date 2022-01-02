import 'package:flutter/material.dart';
import 'package:roster_web_app/pages/home_page.dart';

class MyTestWidget
    extends StatelessWidget {
  const MyTestWidget({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top Border
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.teal,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 100,
          child: Container(
            child: MyHomePage(),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
