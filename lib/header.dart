import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // va a regresar toda la parte superior de la pantalla
    // incluyendo gradiente con titulo e imagenes
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }
}
