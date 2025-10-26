import 'package:flutter/material.dart';
import '../widgets/my_drawer.dart';

class piramideIconos extends StatelessWidget {
  const piramideIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de filas y columnas anidadas'),
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Si el ancho es mayor a 600px (tablet/PC)
              if (constraints.maxWidth > 600) {
                return _buildWideLayout();
              } else {
                // Si el ancho es menor (móvil)
                return _buildNarrowLayout();
              }
            },
          ),
        ),
      ),
    );
  }

  // Layout para pantallas GRANDES (tablet/PC)
  Widget _buildWideLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Fila 1: 3 imágenes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageBox('assets/images/iconosP3Screen8/flutter.png'),
            const SizedBox(width: 20),
            _buildImageBox('assets/images/iconosP3Screen8/github.png'),
            const SizedBox(width: 20),
            _buildImageBox('assets/images/iconosP3Screen8/java.png'),
          ],
        ),
        const SizedBox(height: 20),
        // Fila 2: 3 imágenes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageBox('assets/images/iconosP3Screen8/kotlin.png'),
            const SizedBox(width: 20),
            _buildImageBox('assets/images/iconosP3Screen8/mysql.png'),
            const SizedBox(width: 20),
            _buildImageBox('assets/images/iconosP3Screen8/python.png'),
          ],
        ),
      ],
    );
  }

  // Layout para pantallas PEQUEÑAS (móvil)
  Widget _buildNarrowLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Fila 1: 1 imagen
        _buildImageBox('assets/images/iconosP3Screen8/flutter.png'),
        const SizedBox(height: 20),
        // Fila 2: 2 imágenes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageBox('assets/images/iconosP3Screen8/github.png'),
            const SizedBox(width: 20),
            _buildImageBox('assets/images/iconosP3Screen8/java.png'),
          ],
        ),
        const SizedBox(height: 20),
        // Fila 3: 3 imágenes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageBox('assets/images/iconosP3Screen8/kotlin.png'),
            const SizedBox(width: 10),
            _buildImageBox('assets/images/iconosP3Screen8/mysql.png'),
            const SizedBox(width: 10),
            _buildImageBox('assets/images/iconosP3Screen8/python.png'),
          ],
        ),
      ],
    );
  }

  // Widget para cada imagen
  Widget _buildImageBox(String imagePath) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.purpleAccent, width: 3),
        boxShadow: [
          BoxShadow(
            color: Colors.purpleAccent.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
    );
  }
}