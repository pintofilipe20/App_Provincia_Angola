import 'package:flutter/material.dart';

class Provincia extends StatelessWidget {
  const Provincia({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Color.fromARGB(255, 248, 246, 247),
      child: ListView(
        children: [
          Center(
            child: Text(
              'Lista Provincias',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF30B92),
              ),
            ),
          ),
          Container(
              height: 40,
              child: Center(
                child: Text(
                  '-------------------------------------------------------',
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Container(
            color: Color(0xFFF30B92),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.add_location_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    'BENGUELA',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    '1456 km - 9 municípios',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.next_plan_sharp,
                    color: Colors.white,
                  ),
                  onLongPress: () {},
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFF30B92),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.add_location_alt,
                    color: Colors.white,
                  ),
                  title: Text(
                    'BENGUELA',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    '1456 km - 9 municípios',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.next_plan_sharp,
                    color: Colors.white,
                  ),
                  onLongPress: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
