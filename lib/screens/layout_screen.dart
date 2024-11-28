import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  static const routeName = "/layout-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout"),
        // Widget custom
        leading: IconButton(
          onPressed: (){
            /// Navegación hacia atrás 
            /// push -> ir hacia adelante
            /// pop -> ir hacia atrás
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      /// 1. Column
      /// 2. Row
      /// 3. Container
      body: Column(
        children: [],
      ),
    );
  }
}