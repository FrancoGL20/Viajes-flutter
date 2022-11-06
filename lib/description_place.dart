import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String descriptionPlace;
  String namePlace;
  int stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);

  @override
  Widget build(BuildContext context) {
    
    // estrella
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );
    
    // estrella a la mitad
    final star_half = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );
    
    // estrella vacia
    final star_border = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );

    // Titulo junto con estrellas
    final titleStars = Row(
      children: <Widget>[
        // titulo
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900,fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),

        // 5 estrellas
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );

    // descripción del lugar (todo el texto)
    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    // unión de titulo junto a estrellas y descripción del lugar
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, description,ButtonPurple("Navigate")],
    );
  }
}
