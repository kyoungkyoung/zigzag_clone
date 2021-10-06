import 'package:flutter/material.dart';

class Clothes extends StatelessWidget {
  final String clothesImg;
  final String cTitle;
  final String cPrice;

  const Clothes({Key key,
  String this.clothesImg,
  String this.cTitle,
  String this.cPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Image(
            image: AssetImage(clothesImg),
            width: 129,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(cTitle),
              Text(cPrice),
            ],
          ),
        ),
      ],

    );
  }
}
