import 'package:flutter/material.dart';

// Minha classe HomePage que será retornada por MaterialApp em home:
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Função responsável por alterar a cor de todos os conteineres
  void alterarCor(var cor) {
    setState(() {
      for (var i = 0; i < containers.length; i++) {
        containers[i] = Container(
          alignment: Alignment.center,
          width: 90,
          height: 100,
          color: cor,
          // Utilizo operador ternário para verficar qual cor foi selecionada e definir o texto e cor do texto a ser apresentado.
          child: Text(
              cor == Colors.red
                  ? 'Red'
                  : cor == Colors.black
                      ? 'Black'
                      : cor == Colors.yellow
                          ? 'Yellow'
                          : 'Green',
              style: TextStyle(
                  fontSize: 25,
                  color: cor == Colors.black ? Colors.white : Colors.black)),
        );
      }
    });
  }

  // Criando uma Lista / Arrays de conteiner para deixar o código menos repetitivo.
  List<Container> containers = [
    Container(
      alignment: Alignment.center,
      width: 90,
      height: 100,
      color: Colors.blue,
      child: const Text('Texto', style: TextStyle(fontSize: 25)),
    ),
    Container(
      alignment: Alignment.center,
      width: 90,
      height: 100,
      color: Colors.red,
      child: const Text('Texto', style: TextStyle(fontSize: 25)),
    ),
    Container(
      alignment: Alignment.center,
      width: 90,
      height: 100,
      color: Colors.orange,
      child: const Text('Texto', style: TextStyle(fontSize: 25)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.tealAccent),
                child: Text(
                  'Cores Disponíveis',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            ListTile(
                title: const Text(
                  'Vermelho',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  alterarCor(Colors.red);
                }),
            ListTile(
              title: const Text(
                'Preto',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                alterarCor(Colors.black);
              },
            ),
            ListTile(
              title: const Text(
                'Amarelo',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                alterarCor(Colors.yellow);
              },
            ),
            ListTile(
              title: const Text(
                'Verde',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                alterarCor(Colors.green);
              },
            ),
          ],
        )),
        // Estruturando o body do meu app.
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: containers),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: containers),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: containers)
          ],
        ));
  }
}
