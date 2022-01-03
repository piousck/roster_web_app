import 'package:flutter/material.dart';
import 'package:roster_web_app/widgettest/second_test_wid.dart';
import 'package:roster_web_app/widgettest/widget_test.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.redAccent,
          constraints: const BoxConstraints(maxWidth: 180, minWidth: 80),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 10,
          child: Container(
            child: mainWindowBox(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }

  Container mainWindowBox() {
    return Container(
      constraints: BoxConstraints.loose(Size(150, 650)),
      child: MySecondTestWidget(),
    );
  }
}
