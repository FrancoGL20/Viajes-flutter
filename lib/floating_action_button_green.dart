import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  // variable que contiene el estado del boton
  bool _pressed = false;

  // función a realizar cuando se presione el boton
  // va a cambiar el estado de la variable
  void onPressedFav() {
    // notifica a la aplicación que el estado cambió
    setState(() {
      // cambia el estado del botón
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // botón en sí con sus estilos y propiedades 
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      // literalmente define si el color será pequeño o no
      mini: true,
      // tip al hacer hover (o mantenerlo presionado) sobre el botón
      tooltip: "Fav",
      // función que se va a realizar al presionar el botón
      onPressed: onPressedFav, // no lleva los parentesis
      // icono interno
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
