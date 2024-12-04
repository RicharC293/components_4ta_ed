import 'dart:convert';

import 'package:components/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({super.key});

  static const routeName = "/forms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formularios e Imagenes"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// FadeInImage
              const FadeInImage(
                image: NetworkImage(
                  "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
                ),
                placeholder: AssetImage("assets/images/loading.gif"),
                width: 100,
              ),

              /// Crear Imagenes - Renderizar Imagenes -> Image (Proveedor) - Widget
              /// 1. A partir de los assets
              /// (AssetImage) (Proveedor) -> Image (Widget) -> Ciertos widgets te piden un provider
              const Image(
                image: AssetImage("assets/images/image.jpeg"),
                // Ancho de la imagen
                // MediaQuery.of(context).size.width -> Ancho de la pantalla
                width: 300,
                // Alto de la imagen
                height: 150,
                // Fit -> Ajuste de la imagen
                fit: BoxFit.contain,
              ),

              /// Poner una imagen sobre otra -> Stack -> Opacity (Luego...)
              /// Widget
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/pets.png"),
              ),

              /// Background image dentro de un container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.red,
                    width: 10.0,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/pets.png"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(5.0, 5.0),
                    ),
                  ],
                ),
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(20.0),
                child: const Text("Hola"),
              ),

              /// 2. A partir de un enlace de internet -> .jpg, .png, .gif .webp(Funciona?)
              /// Proveedor -> NetworkImage
              const Image(
                image: NetworkImage(
                  "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
                ),
                width: 100,
                height: 100,
              ),
              Image.network(
                "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
              ),

              /// 3. A partir de un base64
              Image(
                image: MemoryImage(base64Decode(base64Example)),
              ),

              Image.memory(base64Decode(base64Example)),

              /// Renderizar un SVG
              SvgPicture.asset(
                "assets/svg/apple-pay.svg",
              ),

              /// Formularios
              /// 1. TextField -> Solo ingresar un texto (Solo ingresar valores)
              /// 2. TextFormField -> Realiza validaciones (vacío, email, #caracteres)
              /// 3. DropdownButton -> Seleccionar elementos de una lista -> https://api.flutter.dev/flutter/material/DropdownButton-class.html
              /// 4. Checkbox -> Seleccionar elementos de una lista -> https://api.flutter.dev/flutter/material/Checkbox-class.html
              /// 5. RadioButton -> Seleccionar un elemento de una lista -> https://api.flutter.dev/flutter/material/Radio-class.html
              /// 6. Switch -> Activar o desactivar una opción -> https://api.flutter.dev/flutter/material/Switch-class.html

              /// TextField
               Padding(
                padding:const EdgeInsets.all(16.0),
                child: TextField(
                  /// Características de los teclados
                  keyboardType: TextInputType.emailAddress,

                  /// Máximo de caracteres
                  /// buildCounter -> Construir un contador de caracteres
                  maxLength: null,

                  /// Maximo de lineas
                  // maxLines: 3,

                  /// Minimo de lineas
                  // minLines: 1,

                  /// Habilitar o deshabilitar el campo
                  enabled: true,

                  obscureText: true,
                  obscuringCharacter: "*",

                  /// Acciones
                  /// Cada vez que haga click en un botón del teclado
                  onChanged: (value) {
                    print(value);
                  },
                  /// Cada vez que haga click en el botón de enviar
                  onSubmitted: (value) {
                    print(value);
                  },

                  onTap: () {
                    print("Tap");
                  },

                  // onSave
                  // onEditingComplete
                  // validator

                  /// InputDecoration -> Decoración del campo
                  decoration:  InputDecoration(
                    /// Placeholder -> hintText -> Texto que se muestra cuando no hay nada escrito -> test@ejemplo.com
                    hintText: "test@test.com",
                    // Actualizar los estilos del hint
                    // hintStyle: TextStyle(
                    //   color: Colors.red,
                    // ),

                    /// Nombre de el campo
                    labelText: "Correo",
                    // Actualizar los estilos del label
                    // labelStyle: ,

                    /// OutlineInputBorder -> con las propiedades pueden actualizar todo
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(100),
                    // ),
                    /// Temas de los bordes
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(100),
                    //   borderSide: BorderSide(
                    //     color: Colors.blue,
                    //   )
                    // ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.teal,
                    //   )
                    // ),

                    /// Icono al inicio del campo
                    prefixIcon: Icon(Icons.email, color: Colors.red,),

                    /// Icono al final del campo
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                },
                child: const Text("Unfocus"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
