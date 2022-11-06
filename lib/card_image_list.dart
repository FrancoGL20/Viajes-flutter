import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // definiendo altura de contenedor
      height: 350.0,
      margin: const EdgeInsets.only(top: 10.0),
      // como hija del contenedor va a ser la lista
      child: ListView(
        // espacio entre imagen y borde del contenedor
        padding: const EdgeInsets.all(25.0),
        // cambio de dirección del scroll
        scrollDirection: Axis.horizontal,
        // elementos de la lista
        children: [
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/beach_palm.jpeg"),
          CardImage("assets/img/mountain.jpeg"),
          CardImage("assets/img/mountain_stars.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }
}
