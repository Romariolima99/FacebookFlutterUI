import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/telas/home.dart';
import 'package:my_flutter_web_app/telas/principal.dart';
import 'package:my_flutter_web_app/uteis/paletasCores.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Facebook',
    debugShowCheckedModeBanner: false,
    // theme: ThemeData(
    //   scaffoldBackgroundColor: PaletaCores.Scaffold,
    // ),
    // home: Home(),
     home: Principal(),
  ));
}
