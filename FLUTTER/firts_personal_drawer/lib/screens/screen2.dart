import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Foto'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto circular
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('assets/images/foto_perfil.jpg'),
            ),
            
            const SizedBox(height: 30),
            
            // Nombre completo
            const Text(
              'Elias Pedrosa Madrid',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}