import 'package:flutter/material.dart';

class ListsScreen extends StatefulWidget {
  const ListsScreen({super.key});

  static const routeName = "/lists";

  @override
  State<ListsScreen> createState() => _ListsScreenState();
}

class _ListsScreenState extends State<ListsScreen> {
  final listDeElementos = List.generate(10000, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listas"),
      ),

      /// Expanded -> Widget todo lo que tiene disponible
      body: Row(
        children: [
          /// 1. ListView
          Expanded(
            child: ListView(
              // Dirección del scroll
              // scrollDirection: Axis.vertical,
              // Física del scroll
              // BouncingScrollPhysics -> fisica iOS
              // AlwaysScrollableScrollPhysics -> fisica Android
              // NeverScrollableScrollPhysics-> No se puede hacer scroll
              // physics: AlwaysScrollableScrollPhysics(),
              children: const [
                Text("Elemento 1"),
                Text("Elemento 2"),
                Text("Elemento 3"),
                Text("Elemento 4"),
                Text("Elemento 5"),
                Text("Elemento 6"),
                Text("Elemento 7"),
                Text("Elemento 8"),
              ],
            ),
          ),

          /// 2. SingleChildScrollView -> acompañado del column - row
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                /// ESTO NO ES OPTIMO!!!!
                // children: listDeElementos.map((element) {
                //   /// [0,1,2,3,4,5,6]
                //   /// map -> element = 0
                //   /// map -> element = 1
                //   return Text("Elemento $element");
                // }).toList(),
                children: [
                  Container(
                    color: Colors.red,
                    height: 500,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 500,
                  ),
                ],
              ),
            ),
          ),

          /// 3. ListView.builder
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) {
                /// 0 -> listaDeElementos[0]
                /// 1 -> listaDeElementos[1]
                /// 2 -> listaDeElementos[2]
                return Text("Elemento es ${listDeElementos[index]}");
              },
              itemCount: listDeElementos.length,
            ),
          ),
        ],
      ),
    );
  }
}
