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
          onPressed: () {
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
        // El column tiene propiedades
        // Alinear los elementos en el eje principal -> mainAxisAlignment
        // Alinear los elementos en el eje secundario -> crossAxisAlignment
        // Definir el tanaño del column verticalmente -> mainAxisSize
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Widgets
          /// Container -> Caja, color, modificar los bordes, sombreados, tamaños, etc.
          Container(
            color: Colors.blue,
            height: 100,
            // Revisar
            // width: (context.size?.width ?? 0) / 2,
            // 1. MediaQuery.of(context).size.width -> Tamaño de la pantalla
            // 2. LayoutBuilder -> Nos permite obtener el tamaño de la pantalla -> https://api.flutter.dev/flutter/widgets/LayoutBuilder-class.html
            width: MediaQuery.of(context).size.width / 2,
          ),

          // SizedBox -> Espacio -> caja vacía con un tamaño definido
          const SizedBox(
            height: 20,
          ),

          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            color: Colors.green,
            width: 50,
            height: 50,
          ),

          const SizedBox(
            height: 20,
          ),

          /// Row -> Filas -> Colocar widgets de manera horizontal
          /// mainAxisAlignment -> eje horizontal
          /// crossAxisAlignment -> eje vertical
          /// mainAxisSize -> tamaño de la fila
          Row(
            children: [
              Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    stops: [0.1, 0.2, 1.0],
                    colors: [
                      Colors.yellow,
                      Colors.red,
                      Colors.blue,
                    ],
                  ),
                ),
                width: 50,
                height: 50,
              ),
              Tooltip(
                message: "HOLA",
                child: Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                ),
              ),

              // GestureDetector -> Detectar gestos -> envolver el widget que quieres que tenga un gesto
              GestureDetector(
                onTap: () {
                  print("Hola mundo");
                },
                child: Container(
                  color: Colors.orange,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
