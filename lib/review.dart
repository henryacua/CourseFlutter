import 'package:flutter/material.dart';


class Review extends StatelessWidget {

  String pathImage;
  String details;
  String comment;
  String name;

  Review(this.pathImage,this.details,this.name,this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
        ),
      )
    );


    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
        ),
      ),
    );

    final userComment = Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 13,
            fontWeight: FontWeight.w900
          ),
        )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    );

    return Row (
      children: [
        photo,
        userDetails
      ],
    );
  }



}