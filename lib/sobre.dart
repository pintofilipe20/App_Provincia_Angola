import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        children: [
          Image.asset("imagens/foto_perfil.png"),
          Container(
              height: 30,
              child: Center(
                child: Text(
                  'Dev Flutter Jr Pinto Filipe',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF30B92),
                  ),
                ),
              )),
          Container(
            width: 150,
            height: 180,
            padding: EdgeInsets.only(left: 60, right: 15, top: 16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("imagens/esquerdo.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text(
                'App Provincia Angola, é uma aplicação de âmbito socila, que visa dar informações sobre as províncias existentes em Angola, tais como: os seus governadores, nivel habitacional da população, municipios existentes entre outros.',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 60, top: 16, bottom: 16),
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("imagens/direito.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text(
                'Pensou-se em criar o respectivo tanto ao nível pessoal em aplicar os conhecimento em Flutter, mas também devido a carência de informação das províncias existentes em Angola, no sentido de ter as informações no modo Off Line dado o histórico acesso da população em ter acesso a internet. Caso queiras contribuir no repositório me dê um feedback nos endereços abaixo',
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          Container(
            width: 100,
            height: 150,
            color: Colors.white,
            child: Center(
              child: ListView(
                padding: EdgeInsets.zero,
                itemExtent: 35,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.facebook_outlined),
                    title: Text(
                      'Pinto Filipe',
                      style: TextStyle(
                          color: Color(0xFFF30B92),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text(
                      'pintochicola74@gmail.com',
                      style: TextStyle(
                          color: Color(0xFFF30B92),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 150,
            height: 150,
          ),
        ],
      ),
    );
  }
}
