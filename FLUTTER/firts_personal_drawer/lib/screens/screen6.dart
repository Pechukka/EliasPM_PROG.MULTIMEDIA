import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../widgets/my_drawer.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textos con Fuentes'),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // FILA 1: Google Font Pacifico
            Container(
              height: 100,
              color: Colors.blue[100],
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Este es un texto muy largo con la fuente Pacifico de Google Fonts que no cabe en el contenedor pero se ajusta automáticamente.',
                style: GoogleFonts.pacifico(
                  fontSize: 30,
                  color: Colors.blue,
                ),
                maxLines: 3,
              ),
            ),

            // FILA 2: Google Font Roboto Mono
            Container(
              height: 100,
              color: Colors.green[100],
              padding: const EdgeInsets.all(10),
              child: AutoSizeText(
                'Esta es la segunda fila con fuente Roboto Mono de Google Fonts. También es un texto largo que necesita ajustarse al espacio.',
                style: GoogleFonts.robotoMono(
                  fontSize: 28,
                  color: Colors.green,
                ),
                maxLines: 3,
              ),
            ),

            // FILA 3: Fuente por defecto
            Container(
              height: 100,
              color: Colors.orange[100],
              padding: const EdgeInsets.all(10),
              child: const AutoSizeText(
                'Esta es la tercera fila usando la fuente por defecto del sistema. Es otro texto largo para demostrar el paquete AutoSizeText.',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}