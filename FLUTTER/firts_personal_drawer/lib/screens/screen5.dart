import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Imagen 1
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Imagen 1',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            
            // Imagen 2
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Imagen 2',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            
            // Imagen 3
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: Colors.orange,
              child: const Center(
                child: Text(
                  'Imagen 3',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            
            // Imagen 4
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'Imagen 4',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            
            // Imagen 5
            Container(
              margin: const EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              color: Colors.pink,
              child: const Center(
                child: Text(
                  'Imagen 5',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}