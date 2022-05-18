import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review.dart';
import 'app_bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String descriptionPlace = 'Luce audaz e innovador con los estilos icónicos de Calvin Klein. Descubre nuestras nuevas colecciones. Envíos a todo el país. Compra en calvinklein.co. Calvin Klein Colombia. \n \nEstilos: Manga larga y corta, Con cremallera y hoddies, Skinny, mid y low rise.';

  String pathImage = 'asset/img/Hippie.jpeg';
  String name = "Daniel Hilarion";
  String details = "1 review 1 photo";
  String comment = "Me gusta ir al gym";

  MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: const myAppBar(),
        body: Column(
            children: [
              DescriptionPlace('Calvin Klein', 5, descriptionPlace),
              Review(pathImage, details, name, comment),
            ]
        )
      )
    );
  }
}


