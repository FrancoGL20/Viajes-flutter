import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";
  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margenes del contenedor del botón
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        // medidas del contenedor del botón
        height: 50.0,
        width: 180.0,
        // color de fondo como gradiente
        // curvatura de las orillas del contenedor del botón
        decoration: BoxDecoration(
          // redondeado del contenedor del botón
          borderRadius: BorderRadius.circular(30.0),
          // color de fondo del contenedor del botón
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),

        // widget que permite añadir la opción de responder a touch
        child: InkWell(
          // al presionar el botón va a aparecer un mensaje que diga "Navegando"
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Navegando")));
          },
          // texto interno del InkWell y del botón
          child: Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
              ),
          ),
        )

    );
  }
}
