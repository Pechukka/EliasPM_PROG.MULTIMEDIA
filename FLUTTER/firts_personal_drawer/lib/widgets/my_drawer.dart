import 'package:flutter/material.dart';
import '../screens/datosPersonales.dart';
import '../screens/miFoto.dart';
import '../screens/miniaturas.dart';
import '../screens/iconos.dart';
import '../screens/galeria.dart';
import '../screens/textFonts.dart';
import '../screens/imagenesRepetidas.dart';
import '../screens/piramideIconos.dart';
import '../screens/retoContainer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.menu_book, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Menú',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.person, color: Colors.purpleAccent),
              title: const Text(
                'Datos Personales',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DatosPersonales(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.photo, color: Colors.purpleAccent),
              title: const Text(
                'Mi Foto',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MiFoto()),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.photo_library,
                color: Colors.purpleAccent,
              ),
              title: const Text(
                'Miniaturas',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Miniaturas()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.apps, color: Colors.purpleAccent),
              title: const Text(
                'Iconos',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Iconos()),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.collections,
                color: Colors.purpleAccent,
              ),
              title: const Text(
                'Galería',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Galeria()),
                );
              },
            ),

            const Divider(color: Colors.purpleAccent, thickness: 1),

            ListTile(
              leading: const Icon(
                Icons.text_fields,
                color: Colors.purpleAccent,
              ),
              title: const Text(
                'Textos con Fuentes',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TextFonts()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.image, color: Colors.purpleAccent),
              title: const Text(
                'Imágenes Repetidas',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImagenesRepetidas(),
                  ),
                );
              },
            ),

            const Divider(color: Colors.purpleAccent, thickness: 1),

            ListTile(
              leading: const Icon(Icons.grid_view, color: Colors.purpleAccent),
              title: const Text(
                'Piramide Iconos',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const piramideIconos(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.star, color: Colors.purpleAccent),
              title: const Text(
                'Reto Container',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RetoContainer(),
                  ),
                );
              },
            ),

            const Divider(color: Colors.purpleAccent, thickness: 1),
          ],
        ),
      ),
    );
  }
}
