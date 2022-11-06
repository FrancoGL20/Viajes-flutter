import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImg = "assets/img/people.jpg";
  String name = "Varuna Yamas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in this house";

  // constructor de la clase con el directorio de la img como parametro
  Review(this.pathImg, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    // comentario del usuario
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0, 
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
      ),
    );

    // detalles junto a las estrellas
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0, 
          fontFamily: "Lato", 
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    // nombre del usuario
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    // Columna con todos los detalles
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName,userInfo,userComment],
    );

    // foto
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImg))),
    );

    return Row(
      children: [photo,userDetails],
    );
  }
}
