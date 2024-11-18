import 'package:app_provincia/provincias.dart';
import 'package:app_provincia/screens/qna_screen.dart';
import 'package:app_provincia/sobre.dart';
// ignore: unused_import
import 'package:app_provincia/inicio.dart';
import 'package:app_provincia/curiosidade.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variaveis de controle da Navegação
  int ItemSeleccionado = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF30B92)),
          useMaterial3: false,
        ),
        home: Scaffold(
          body: IndexedStack(
            index: ItemSeleccionado,
            children: <Widget>[
              Inicio(),
              QnaScreen(),
              Sobre(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: ItemSeleccionado,
            onTap: (valor) {
              setState(() {
                ItemSeleccionado = valor;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.post_add), label: "Provincias"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Sobre"),
            ],
          ),
        ));
  }
}
