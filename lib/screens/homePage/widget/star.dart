import 'package:flutter/material.dart';

class RaingBar extends StatelessWidget {
  final double Rating;

  const RaingBar({Key key, this.Rating}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(Rating.floor(), (index) {
        return Icon(
          Icons.star,
          color: Colors.white,
          size: 16,
        );
      }),
    );
  }
}
