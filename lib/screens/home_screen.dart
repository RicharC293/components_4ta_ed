import 'package:components/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // 1. Debemos darle un nombre a la pantalla
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // List Tile -> https://api.flutter.dev/flutter/material/ListTile-class.html
          ListTile(
            title: const Text("Layouts"),
            onTap: () {
              /// 1. Navegación con un builder -> Navigator
              /// https://docs.flutter.dev/cookbook/navigation/navigation-basics
              /// Route:
              ///  MaterialPageRoute(
              ///    builder: (context) => const LayoutScreen(), /// Pantalla a donde nos a dirigir
              ///  ),
              ///
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const LayoutScreen(),
              //   ),
              // );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const LayoutScreen(),
              //   ),
              // );

              /// 2. Navegación con rutas
              /// 1. Debemos darle un nombre a la pantalla ☑
              /// 2. Debemos definir un archivo de rutas ☑
              /// 3. Declarar la ruta en el main ☑
              /// 4. PushNamed para ir a otra pantalla ☑
              Navigator.pushNamed(context, LayoutScreen.routeName);

              /// Pantallas
              /// list_screen.dart
              /// buttons_screen.dart
              /// alerts_screen.dart
              /// forms_screen.dart
              /// infinity_scroll_screen.dart
              /// animations_screen.dart
              /// Navegación por Nombre o por Ruta
              /// stl -> Placeholder
            },
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(Icons.square),
          ),

          ListTile(
            title: const Text("Tipos de lista"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const Icon(Icons.list),
          ),

          ListTile(
            title: const Text("Botones"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            title: const Text("Alertas"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            title: const Text("Formularios"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            title: const Text("Infinity scroll"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            title: const Text("Animaciones"),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
