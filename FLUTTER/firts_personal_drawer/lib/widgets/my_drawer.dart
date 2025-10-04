import 'package:flutter/material.dart';
import '../screens/screen1.dart';
import '../screens/screen2.dart';
import '../screens/screen3.dart';
import '../screens/screen4.dart';
import '../screens/screen5.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Cabecera del drawer
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),

          // Opción 1
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Datos Personales'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Screen1()),
              );
            },
          ),

          // Opción 2
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Mi Foto'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Screen2()),
              );
            },
          ),

          // Opción 3
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Miniaturas'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Screen3()),
              );
            },
          ),

          // Opción 4
          ListTile(
            leading: const Icon(Icons.apps),
            title: const Text('Iconos'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Screen4()),
              );
            },
          ),

          // Opción 5
          ListTile(
            leading: const Icon(Icons.collections),
            title: const Text('Galería'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Screen5()),
              );
            },
          ),
        ],
      ),
    );
  }
}