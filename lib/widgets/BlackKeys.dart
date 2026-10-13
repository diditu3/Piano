import 'package:flutter/material.dart';

class BlackKeys extends StatelessWidget {
  const BlackKeys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        margin: EdgeInsets.only(right: 80, bottom: 70),
      ),
    );
  }
}
