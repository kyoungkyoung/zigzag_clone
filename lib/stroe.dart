import 'package:flutter/material.dart';
import 'package:ui_hw/gray_icon.dart';

class Store extends StatelessWidget {
  const Store({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'zigzag',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SB Agro',
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const GrayIcon(),
            const GrayIcon(),
            const GrayIcon(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_basket,
                  color: Colors.pink,
                ))
          ],
        ));
  }
}


