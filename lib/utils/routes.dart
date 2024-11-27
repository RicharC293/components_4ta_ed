import 'package:components/screens/home_screen.dart';
import 'package:components/screens/layout_screen.dart';

final routes = {
  /// Clave y Valor
  /// El nombre de la pantalla : builder -> (context) => NombrePantalla(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LayoutScreen.routeName : (context) => const LayoutScreen(),
};