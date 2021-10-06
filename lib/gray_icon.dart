import 'package:flutter/material.dart';

class GrayIcon extends StatelessWidget {
  const GrayIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      // icon: Icon(Icons.crop_square_rounded, color: Colors.grey,),
      icon: SizedBox(
        child: Container(
          color: Colors.grey,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
    );
  }
}