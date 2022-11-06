import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State<Trips> {

  // indice para controlar en que ventana se está mostrando
  int indexTap = 1;

  // lista de clases con las vistas necesarias
  final List<Widget> widgetsChildren = [
    // pantalla de home
    HomeTrips(),
    // pantalla de busqueda
    SearchTrip(),
    // pantalla de perfil
    ProfileTrips()
  ];

  // función a ejecutar al cambiar el estado
  void onTapTapped(int index) {
    // llama de nuevo a todo el Stateful, pero
    // con los datos cambiados
    setState(() {
      // el indice que recibe, envialo a indextab
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      // barra de navegación, va dentro del scaffold
      bottomNavigationBar: Theme(
          // caracteristicas de la barra de navegación
          data: Theme.of(context).copyWith(
              // color de barra
              canvasColor: Colors.white,
              // color de elementos
              primaryColor: Colors.purple),
          // barra en sí junto con sus items y comportamieto
          child: BottomNavigationBar(
            // cuando se presione una ventana que va a pasar
            onTap: onTapTapped,
            // indice de la pestaña que se está mostrando
            currentIndex: indexTap,
            // no mostrar las etiquetas seleccionadas
            showSelectedLabels: false,
            // no mostrar las etiquetas deseleccionadas
            showUnselectedLabels: false,
            items: const [
              // item de home
              BottomNavigationBarItem(
                  // icono
                  icon: Icon(Icons.home),
                  // etiqueta
                  label: "Home"),
              // item de search
              BottomNavigationBarItem(
                  // icono
                  icon: Icon(Icons.search),
                  // etiqueta
                  label: "Search"),
              // item de person
              BottomNavigationBarItem(
                  // icono
                  icon: Icon(Icons.person),
                  // etiqueta
                  label: "Icon"),
            ],
          )),
    );
  }
}
