import 'package:flutter/material.dart';

//EL stafulwidget tiene dos clases una propia y la del estado

class ContadorPage extends StatefulWidget {
  //Siempre se tiene que implementar el create state
  @override
  createState() => _ContadorPageState();
}

//Esta clase sera de tipo privado solo se utilizara en esta clase
class _ContadorPageState extends State<ContadorPage> {
  //Me declaro una variable de ese tipo para poder reutilizarla.
  final _fuenteTexto = new TextStyle(fontSize: 25.0);

  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    //Aqui siempre debemos de regresar un widget.
    return Scaffold(
      //Appbar es la parte superios
      appBar: AppBar(
        title: Center(
            child: Text(
          "Mi AppBar",
          style: TextStyle(color: Colors.cyan.shade200),
        )),
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
            Text("Numero de clicks", style: _fuenteTexto),
            Text(
              "$_cont",
              style: _fuenteTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //El sizedBox sirve a tipo de div en un html
        SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _cont = 0;
            });
          },
          child: Icon(Icons.settings_backup_restore_outlined),
        ),
        //El expanded sirve para expandir el widget al extremo.
        Expanded(child: SizedBox()),
        FloatingActionButton(
          //Aqui creo una funcion anonima, si colocamos un null que es valido, no se podria hacer click
          onPressed: () {
            //El setState lo que hace es permitir renderizar el incremento del contador.
            setState(() {
              _cont++;
            });
          },
          child: Icon(Icons.add_outlined),
        ),
        SizedBox(width: 10),
        FloatingActionButton(
          //Aqui creo una funcion anonima, si colocamos un null que es valido, no se podria hacer click
          onPressed: () {
            //El setState lo que hace es permitir renderizar el incremento del contador.
            if (_cont != 0) {
              setState(() {
                _cont--;
              });
            }
          },
          child: Icon(Icons.remove_outlined),
        ),
      ],
    );
  }
}
