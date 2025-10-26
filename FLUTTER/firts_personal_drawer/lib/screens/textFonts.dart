import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../widgets/my_drawer.dart';

class TextFonts extends StatelessWidget {
  const TextFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textos con Fuentes'),
      ),
      drawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple],
                  ),
                  border: Border.all(color: Colors.purpleAccent, width: 2),
                ),
                padding: const EdgeInsets.all(10),
                child: AutoSizeText(
                  'Este es un texto muy largo con la fuente Pacifico de Google Fonts que no cabe en el contenedor pero se ajusta automáticamente.',
                  style: GoogleFonts.pacifico(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                ),
              ),

              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.deepPurple, Colors.purple],
                  ),
                  border: Border.all(color: Colors.purpleAccent, width: 2),
                ),
                padding: const EdgeInsets.all(10),
                child: AutoSizeText(
                  'Esta es la segunda fila con fuente Roboto Mono de Google Fonts. También es un texto largo que necesita ajustarse al espacio.',
                  style: GoogleFonts.robotoMono(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                ),
              ),

              Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple],
                  ),
                  border: Border.all(color: Colors.purpleAccent, width: 2),
                ),
                padding: const EdgeInsets.all(10),
                child: const AutoSizeText(
                  'Esta es la tercera fila usando la fuente por defecto del sistema. Es otro texto largo para demostrar el paquete AutoSizeText.',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}