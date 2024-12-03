import 'package:flutter/material.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  static const routeName = "/forms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formularios e Imagenes"),
      ),
      body: Column(
        children: [
          /// Crear Imagenes - Renderizar Imagenes -> Image (Proveedor) - Widget
          /// 1. A partir de los assets 
          /// (AssetImage) (Proveedor) -> Image (Widget) -> Ciertos widgets te piden un provider
          Image(
            image: AssetImage("assets/images/image.jpeg"),
          ),
          
          /// 2. A partir de un enlace de internet -> .jpg, .png, .gif .webp(Funciona?)
          /// 3. A partir de un base64
        ],
      ),
    );
  }
}
