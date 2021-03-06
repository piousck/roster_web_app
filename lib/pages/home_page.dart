import 'package:flutter/material.dart';

class MyHomePage
    extends StatelessWidget {
  const MyHomePage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              color: Colors.redAccent,
              constraints:
                  const BoxConstraints(
                      maxWidth: 85,
                      minWidth: 85),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          top: 90,
          child: Container(
            color: Colors.green,
            width: 180,
            height: 620,
          ),
        ),
      ],
    );
  }
}
