import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImg = "assets/img/beach.jpeg";
  CardImage(this.pathImg);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      // dimensiones y margen
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      // imagen junto con su decoración
      decoration: BoxDecoration(
          // imagen
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImg)),
          // redondeado de los bordes
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          // sombra de la imagen
          boxShadow: const [
            BoxShadow(
              // color de la sombra
              color: Colors.black38,
              // tamaño, radio de la sombra
              blurRadius: 15.0,
              // posición en X y Y dependiendo de la sombra
              offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9,1.15),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }
}
