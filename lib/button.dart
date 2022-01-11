import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget? child;
  final Function()? onTap;
  const Button({Key? key, this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: child));
  }
}
