import 'package:flutter/material.dart';

class Forms2Screen extends StatefulWidget {
  const Forms2Screen({super.key});

  static const routeName = "/forms2";

  @override
  State<Forms2Screen> createState() => _Forms2ScreenState();
}

class _Forms2ScreenState extends State<Forms2Screen> {
  /// Key -> FormState
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _cedula = "";
  String _email = "";
  String _password = "";

  final _nameController = TextEditingController(text: "Text inicial");

  /// Cuando usen controladores deben limpiarlos
  late TextEditingController _cedulaController;

  /// StatefulWidget -> initState -> Inicializar el estado -> el primer renderizado
  @override
  void initState() {
    super.initState();
    _cedulaController = TextEditingController();
  }
  

  /// StatefulWidget -> dispose -> Al cerrar la pantalla -> limpiar recursos
  @override
  void dispose() {
    _cedulaController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// TextFormField -> Form -> Validaciones
    return Scaffold(
        appBar: AppBar(
          title: const Text("Formulario 2"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                /// Nombre y Apellido -> label
                /// Richar Cangui -> hint
                TextFormField(
                  controller: _nameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Nombre y Apellido",
                    hintText: "Richar Cangui",
                    border: OutlineInputBorder(),
                  ),

                  /// validadores
                  /// value -> valor del campo
                  validator: (value) {
                    print("Value del validador: $value");

                    /// 1. Manejar condiciones
                    /// 2. Retornar un mensaje, error.
                    /// Validar que no esté vacío
                    if (value == null || value.isEmpty) {
                      return "Requerido";
                    }

                    /// Validar que al menos tenga dos palabras
                    if (value.split(" ").length < 2) {
                      return "Debe tener nombre y apellido";
                    }

                    return null;
                  },
                  onSaved: (newValue) {
                    _name = newValue ?? "";
                  },
                ),

                const SizedBox(height: 10),

                /// Cédula
                /// 12344567890
                /// Validar que sea igual a 10 caracteres
                TextFormField(
                  controller: _cedulaController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Cédula",
                    hintText: "1234567890",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Requerido";
                    }
                    if (value.length != 10) {
                      return "Debe tener 10 caracteres";
                    }

                    return null;
                  },
                  onSaved: (newValue) {
                    _cedula = newValue ?? "";
                  },
                ),
                const SizedBox(height: 10),

                /// Correo
                /// test@tes.com
                /// Validar que tenga un @
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Correo",
                    hintText: "test@test.com",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Requerido";
                    }
                    // contains -> valida si contiene algo
                    if (!value.contains("@")) {
                      return "Debe tener un @";
                    }

                    return null;
                  },
                  onSaved: (newValue) {
                    _email = newValue ?? "";
                  },
                ),
                const SizedBox(height: 10),

                /// Contraseña
                /// *******
                /// Validar que tenga al menos 6 caracteres
                TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    hintText: "******",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Requerido";
                    }
                    if (value.length < 6) {
                      return "Debe tener al menos 6 caracteres";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _password = newValue ?? "";
                  },
                ),
                const SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    /// Validar el formulario
                    final valueValidator = _formKey.currentState?.validate();
                    if(valueValidator == null || !valueValidator) {
                      return;
                    }
                    /// Otro código - Peticiones server
                    /// Acceder a los datos 
                    _formKey.currentState?.save();
                    /// _nameController.text -> valor del campo
                    /// _nameController.clear() -> limpiar el campo
                    /// _nameController.text = "Nuevo valor" -> cambiar el valor del campo
                    print("Nombre desde el controller: ${_nameController.text}");

                    print("Nombre: $_name");
                    print("Cédula: $_cedula");
                    print("Correo: $_email");
                    print("Contraseña: $_password");
                  },
                  child: Text("Enviar"),
                ),

                /// Crearse unos componentes tipo texto:
                /// 1. Nombre: Richar Cangui
                /// 2. Cédula: 1234567890
                /// 3. Correo:
                /// 4. Contraseña:
              ],
            ),
          ),
        ));
  }
}
