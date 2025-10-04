import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iconos'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.home, size: 60, color: Colors.blue),
            SizedBox(width: 20),
            Icon(Icons.favorite, size: 60, color: Colors.red),
            SizedBox(width: 20),
            Icon(Icons.star, size: 60, color: Colors.amber),
            SizedBox(width: 20),
            Icon(Icons.settings, size: 60, color: Colors.grey),
            SizedBox(width: 20),
            Icon(Icons.notifications, size: 60, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}