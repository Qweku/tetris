// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tetris/pixel.dart';

class GridSection extends StatelessWidget {
  final  List? landedPieces;
  final List? newPiece;
  final Color? newColor;
  final int? numberOfSquares;
  const GridSection({Key? key, this.landedPieces, this.newPiece, this.newColor, this.numberOfSquares})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> pieceColor = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.purple,
    Colors.orange
    ];
    int count = 0;
 
    return GridView.builder(
        itemCount: numberOfSquares,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 10,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          for (int i = 0; i < pieceColor.length; i++) {
            if (landedPieces![i].contains(index)) {
              return Pixel(
                color: pieceColor[i],
              );
            }
          }
          if (newPiece!.contains(index)) {
            return Pixel(
              color: newColor,
            );
          } else {
            return Pixel(
              color: Colors.black,
            );
          }
        });
  }
}
