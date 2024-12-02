import 'package:flutter/cupertino.dart';
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
                      title: const Text("Alerta Android"),
                      content:
                          const Text("Este es un mensaje de alerta en Android"),
                      actions: [
                        /// 3. Agregar los botones
                        /// Botón cancelar -> OutinedButton
                        OutlinedButton(
                          onPressed: () {
                            /// Cerrar la modal
                            Navigator.pop(context);
                          },
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
              onPressed: () {
                // 1. Usar el showCupertinoDialog
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    /// 2. Retornar un CupertinoAlertDialog
                    return CupertinoAlertDialog(
                      title: const Text("Alerta iOS"),
                      content: const Text("Esto es un contenido de iOS"),
                      actions: [
                        /// 3. Agregar los botones
                        CupertinoDialogAction(
                          onPressed: () {
                            /// Cerrar la modal
                            Navigator.pop(context);
                          },
                          isDestructiveAction: true,
                          child: const Text("Cancelar"),
                        ),

                        CupertinoDialogAction(
                          onPressed: (){},
                          isDefaultAction: true,
                          child: const Text("Aceptar"),
                        ),


                      ],
                    );
                  },
                );
              },
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
