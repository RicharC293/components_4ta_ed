import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const routeName = "/buttons-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// CustomScrollView -> Slivers (SliverAppBar, SliverList, SliverGrid)
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text("Buttons Screen"),
            floating: true,
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: Image.network(
              'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //SliverList.builder(itemBuilder: (context, index) {
          //  return const Text("Hola");
          //})
          // SliverList.list -> ListView (Widget)
          // SliverList.builder -> ListView.builder (Widget)
          // SliverList.separated -> ListView.separated (Widget) -> Separador
          SliverList.list(
            children: [
              /// 1. FilledButton
              const Text("Filled Button"),
              FilledButton(
                /// onPressed -> Función que se ejecuta al presionar el botón
                /// (){} -> Función vacía -> No hace nada -> habilitado
                /// null -> Botón deshabilitado
                onPressed: () {
                  print("Filled Button");
                  // Llamar un api
                  // Navegar a otra pantalla
                },

                /// ButtonStyle -> documentación oficial -> https://api.flutter.dev/flutter/material/ButtonStyle-class.html
                style: ButtonStyle(
                  /// cambia el color del botón
                  /// WidgetStateProperty<Color> -> Color
                  /// WidgetStateProperty.all(Colors.amber) -> todo a amarillo
                  backgroundColor: WidgetStateProperty.all(Colors.amber),
                  // backgroundColor: WidgetStateProperty.resolveWith(
                  //   (states) {
                  //     if (states.contains(WidgetState.pressed)) {
                  //       return Colors.red;
                  //     }
                  //     return Colors.amber;
                  //   },
                  // ),
                ),

                /// child -> Widget dentro de ese botón
                /// CircularProgressIndicator -> Widget de carga
                // child: Center(
                //   child: CircularProgressIndicator(
                //     color: Colors.white,
                //   ),
                // ),
                child: const Text("FilledButton"),
              ),

              /// 2. OutlinedButton
              /// 3. TextButton
              /// 4. ElevatedButton
              /// 5. IconButton
            ],
          ),
        ],
      ),
    );
  }
}
