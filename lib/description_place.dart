import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  String descriptionPlace;
  int stars;


  DescriptionPlace(this.namePlace,this.stars, this.descriptionPlace, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),

          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        showStars(stars),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black54
        ),
      ),
    );

    final summary = Column(
      children: [
        titleStars,
        description,
      ],
    );
    return summary;
  }

  Widget star(bool withBorder) {
    return Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3,
      ),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: const Color(0XFFFFC300),
      ),
    );
  }

  Widget showStars(int numberStars) {
    List <Widget> rowStars = [];
    List <Widget> rowStarsBorder = [];
    List.generate(numberStars, (i) => rowStars.add(star(true)));
    List.generate((numberStars - 5).abs(), (i) => rowStarsBorder.add(star(false)));
    List <Widget> finalStars = [...rowStars, ...rowStarsBorder]  ;
    return Row(children: finalStars,);
  }
}