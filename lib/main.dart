import 'package:components/screens/home_screen.dart';
import 'package:components/utils/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      /// Defininimos nuestras rutas del archivo routes.dart
      routes: routes,
      /// Definimos nuestra pantalla inicial mediante el nombre
      initialRoute: HomeScreen.routeName,
    );
  }
}