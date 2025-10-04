import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miniaturas'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Miniatura 1
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Icon(Icons.photo, size: 80, color: Colors.white),
            ),
            
            const SizedBox(height: 20),
            
            // Miniatura 2
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
              child: const Icon(Icons.landscape, size: 80, color: Colors.white),
            ),
            
            const SizedBox(height: 20),
            
            // Miniatura 3
            Container(
              width: 150,
              height: 150,
              color: Colors.orange,
              child: const Icon(Icons.camera_alt, size: 80, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}