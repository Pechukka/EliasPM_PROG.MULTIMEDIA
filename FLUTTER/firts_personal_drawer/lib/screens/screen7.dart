import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes Repetidas'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Título
            const Text(
              'La misma imagen cargada de 3 formas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 20),

            // IMAGEN 1: Desde Assets
            const Text('1. Desde Assets (Local)'),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/imagen_p7.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30),

            // IMAGEN 2: Desde Internet
            const Text('2. Desde Internet'),
            const SizedBox(height: 10),
            Image.network(
              'https://programacion.net/files/article/20151202061254_oficina-ideal.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30), 

            // IMAGEN 3: Desde Assets otra vez
            const Text('3. Desde Assets (otra vez)'),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/imagen_p7.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}