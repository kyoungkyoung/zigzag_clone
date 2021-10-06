import 'package:flutter/material.dart';

class Advertise extends StatelessWidget {
  final String title;
  final String subTitle;
  final String img;

  const Advertise({
    Key key,
    this.title,
    this.subTitle,
    this.img,
}) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image(
            image: AssetImage(img),
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 65.0, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Text(
                  title,
                  softWrap: true,

                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'SB Agro',),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:4),
                child: Text(
                  subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
