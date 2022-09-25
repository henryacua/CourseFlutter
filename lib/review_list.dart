import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('asset/img/santi.jpeg', 'Me gusta weler', 'Santiago Gomez' , '500 review 1 photo'),
        Review('asset/img/Viejita.jpeg', 'Me gusta el Aleteo', 'Edgar Garcia' , '1000 review 1 photo'),
        Review('asset/img/Bejarano.jpeg', 'Me gusta el Vapo sabor pipi', 'Andres Bejarano' , '100 review 1 photo'),
        Review('asset/img/Lozada.jpeg', 'Me gusta el Telegram', 'Jorge Lozada' , '1 review 1 photo'),
        Review('asset/img/Hippie.jpeg', 'Me gusta ir a Ambar', 'Juan Cubillos', '50 review 1 photo'),
        Review('asset/img/Loquito.jpeg', 'Me gusta ir al Gym', 'Daniel Hilarion', '50 review 1 photo')
      ],
    );
  }
}