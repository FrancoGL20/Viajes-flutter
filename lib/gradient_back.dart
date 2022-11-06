import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              // horientación del gradiente
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      // alineación del texto a colocar dependiendo de
      // su posición con el contenedor
      alignment: Alignment(-0.9,-0.4),
      // Texto a mostrar en la imagen 
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),  
      ),
    );
  }
}
