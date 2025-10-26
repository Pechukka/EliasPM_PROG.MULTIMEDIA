import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class MiFoto extends StatelessWidget {
  const MiFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Foto'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.purpleAccent, width: 4),
                ),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.deepPurple,
                  backgroundImage: AssetImage('assets/images/foto_perfil.jpg'),
                ),
              ),
              
              const SizedBox(height: 30),
              
              const Text(
                'Elias Pedrosa Madrid',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}