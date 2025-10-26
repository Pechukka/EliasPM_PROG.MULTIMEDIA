import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class Iconos extends StatelessWidget {
  const Iconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iconos'),
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
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.home, size: 60, color: Colors.purpleAccent),
              SizedBox(width: 20),
              Icon(Icons.favorite, size: 60, color: Colors.purple),
              SizedBox(width: 20),
              Icon(Icons.star, size: 60, color: Colors.purpleAccent),
              SizedBox(width: 20),
              Icon(Icons.settings, size: 60, color: Colors.purple),
              SizedBox(width: 20),
              Icon(Icons.notifications, size: 60, color: Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}