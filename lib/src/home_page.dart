import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Me declaro una variable de ese tipo para poder reutilizarla.
  final fuenteTexto = new TextStyle(fontSize: 25.0);

  final cont = 0;

  @override
  Widget build(BuildContext context) {
    //Aqui siempre debemos de regresar un widget.
    return Scaffold(
      //Appbar es la parte superios
      appBar: AppBar(
        title: Center(child: Text("Mi AppBar")),
        backgroundColor: Color.fromRGBO(0, 3, 1, .3),
        elevation: 10.0,
      ),
      // Aqui el body contiene todo el cuerpo del texto
      body: Center(
        child: Column(
          //Esto es como el justify-contente en flex o grid de css
          mainAxisAlignment: MainAxisAlignment.center,
          //children es una propieda que tiene una lista de widgets,que forman una columna.
          children: <Widget>[
            Text(
              "Primera App en Flutter",
              //sytle es una propiedad del widget text, para aplicar estilos al texto.
              style: TextStyle(fontSize: 20.0),
            ),
            Text("Numero de clicks", style: fuenteTexto),
            Text(
              "$cont",
              style: fuenteTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Aqui creo una funcion anonima, si colocamos un null que es valido, no se podria hacer click
        onPressed: () {
          print("Hiciste click");
        },
        child: Icon(Icons.add_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
