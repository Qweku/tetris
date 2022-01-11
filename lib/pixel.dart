import 'package:flutter/material.dart';

class Pixel extends StatelessWidget {
  final Color? color;
  const Pixel({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child:ClipRRect(
        borderRadius:BorderRadius.circular(5),
        child:Container(
          color: color,
        )
      )
    );
  }
}
