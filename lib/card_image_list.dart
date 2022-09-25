import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("asset/img/beach.jpeg"),
          CardImage("asset/img/beach_palm.jpeg"),
          CardImage("asset/img/mountain.jpeg"),
          CardImage("asset/img/mountain_stars.jpeg"),
          CardImage("asset/img/river.jpeg"),
          CardImage("asset/img/sunset.jpeg"),
        ],
      ),
    );
  }
}