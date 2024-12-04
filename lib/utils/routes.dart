import 'package:components/screens/alerts_screen.dart';
import 'package:components/screens/animations_screen.dart';
import 'package:components/screens/buttons_screen.dart';
import 'package:components/screens/forms_2_screen.dart';
import 'package:components/screens/forms_screen.dart';
import 'package:components/screens/home_screen.dart';
import 'package:components/screens/infinity_scroll_screen.dart';
import 'package:components/screens/layout_screen.dart';
import 'package:components/screens/lists_screen.dart';

final routes = {
  /// Clave y Valor
  /// El nombre de la pantalla : builder -> (context) => NombrePantalla(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LayoutScreen.routeName: (context) => const LayoutScreen(),
  ListsScreen.routeName: (context) => const ListsScreen(),

  /// buttons_screen.dart
  ButtonsScreen.routeName: (context) => const ButtonsScreen(),

  /// alerts_screen.dart
  AlertsScreen.routeName: (context) => const AlertsScreen(),

  /// forms_screen.dart
  FormsScreen.routeName: (context) => const FormsScreen(),

  Forms2Screen.routeName: (context) => const Forms2Screen(),

  /// infinity_scroll_screen.dart
  InfinityScrollScreen.routeName: (context) => const InfinityScrollScreen(),

  /// animations_screen.dart
  AnimationsScreen.routeName: (context) => const AnimationsScreen(),
};
