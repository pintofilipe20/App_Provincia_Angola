import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("imagens/fundoAppProvinciaDestaque.jpg"),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imagens/pessoaRindo.jpg"),
                        fit: BoxFit.cover)),
                width: 150,
                height: 150,
                child: Center(
                  child: Text(
                    'Provincias',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imagens/governadores.jpg"),
                        fit: BoxFit.cover)),
                width: 150,
                height: 150,
                child: Center(
                  child: Text(
                    'Governadores',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imagens/municipe.jpg"),
                        fit: BoxFit.cover)),
                width: 150,
                height: 150,
                child: Center(
                  child: Text(
                    'Municípios',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("imagens/curiosidades.jpg"),
                        fit: BoxFit.cover)),
                width: 150,
                height: 150,
                child: Center(
                  child: Text(
                    'Curiosidades',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
