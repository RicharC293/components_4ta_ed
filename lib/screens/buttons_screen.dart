import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const routeName = "/buttons-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text("Buttoms Scren"),
            floating: true,
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: Image.network(
              'https://cms-imgp.jw-cdn.org/img/p/2023605/univ/art/2023605_univ_lsr_lg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //SliverList.builder(itemBuilder: (context, index) {
          //  return const Text("Hola");
          //})
          SliverList.list(children: const [Text("Hola")])
        ],
      ),
    );
  }
}