import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  static const routeName = "/alerts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alerts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///https://api.flutter.dev/flutter/material/showDialog.html
            TextButton(
              onPressed: () {
                /// 1. Usar el showDialog
                showDialog(
                  context: context,
                  builder: (context) {
                    /// 2. Retornar un AlertDialog
                    return AlertDialog(
                      title: Text("Alerta Android"),
                      content: Text("Este es un mensaje de alerta en Android"),
                      actions: [
                        /// 3. Agregar los botones
                        /// Botón cancelar -> OutinedButton
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text("Cancelar"),
                        ),

                        /// Botón aceptar -> FilledButton
                        FilledButton(
                          onPressed: () {},
                          child: const Text("Aceptar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Alerta Android"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Alerta iOS"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Alerta por plataforma"),
            ),
          ],
        ),
      ),
    );
  }
}
