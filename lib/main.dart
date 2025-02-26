import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sebastian Rojas',
            style: TextStyle(color: Colors.white), // Color del texto del título
          ),
          centerTitle: true, // Centrar el título
          backgroundColor: Color(0xff173b58), // Fondo de color para la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Subtítulo personalizado
              Text(
                'Gael Sebastian Rojas Mata 22308052382303',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20), // Espacio entre el subtítulo y los iconos
              // Primera fila de iconos (3 iconos)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                      icon: Icons.home, subtitle: 'Inicio', color: Colors.red),
                  IconWithSubtitle(
                      icon: Icons.favorite,
                      subtitle: 'Favoritos',
                      color: Colors.purple),
                  IconWithSubtitle(
                      icon: Icons.star,
                      subtitle: 'Destacados',
                      color: Colors.orange),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos (3 iconos)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                      icon: Icons.settings,
                      subtitle: 'Ajustes',
                      color: Colors.green),
                  IconWithSubtitle(
                      icon: Icons.email,
                      subtitle: 'Correo',
                      color: Colors.teal),
                  IconWithSubtitle(
                      icon: Icons.phone,
                      subtitle: 'Llamar',
                      color: Colors.pink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color color;

  const IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        SizedBox(height: 8), // Espacio entre el ícono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
