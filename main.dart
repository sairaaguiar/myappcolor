import 'pages/home_page.dart'; // Importando minha classe HomePage que está em um arquivo separado.
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu App Colorido',
      debugShowCheckedModeBanner: false, // Removendo o banner de debug.
      home: HomePage(), // Chamando minha classe HomePage.
    );
  }
}
