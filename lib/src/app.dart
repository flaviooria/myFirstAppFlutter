//Aqui va tener toda la logica del material app

import 'package:flutter/material.dart';

import 'package:contador/src/contador_page.dart';
import 'package:contador/src/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
