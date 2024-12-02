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
              const Text("Outlined Button"),
              // Center -> Centra el widget
              // Align -> Alinea el widget -> alignment: Alignment.center
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      print("Outlined Button");
                    },
                    // style: ButtonStyle(
                    //   backgroundColor: WidgetStateProperty.all(Colors.amber),
                    // ),
                    child: const Text("OutlinedButton"),
                  ),
                ),
              ),

              /// 3. TextButton
              const Text("Text Button"),
              TextButton(
                onPressed: () {
                  print("Text Button");
                },
                child: const Text("TextButton"),
              ),

              /// 4. ElevatedButton
              const Text("Elevated Button"),
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button");
                },
                child: const Text("ElevatedButton"),
              ),

              /// 5. IconButton
              const Text("Icon Button"),
              Center(
                child: IconButton(
                  onPressed: () {
                    print("Icon Button");
                  },
                  icon: const Icon(Icons.balance_rounded),
                  iconSize: 25,
                  tooltip: "Balance",
                ),
              ),

              /// 6. Texto e icono
              /// https://flutter.github.io/samples/web/material_3_demo/
              FilledButton.icon(
                onPressed: () {},
                label: const Text("With Icon"),
                icon: const Icon(Icons.ac_unit),
              ),

              /// 7. Estilos de texto
              /// 7.1 Abierta
              const Text(
                "Texto con estilos",
                style: TextStyle(
                  // color -> color del texto
                  // Hexadecimal -> 0xff000000
                  color: Color(0xff606060),
                  // fontSize -> tamaño de la fuente
                  fontSize: 25,

                  /// fontWeight -> peso de la fuente
                  fontWeight: FontWeight.w900,
                  // fontStyle -> estilo de la fuente
                  fontStyle: FontStyle.italic,
                ),
              ),

              /// 7.2 Cerrada -> context
              /// Theme.of(context) -> Tema actual de la aplicación
              /// Theme.of(context).textTheme -> Los estilos de texto
              Text(
                "Texto con estilos",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
