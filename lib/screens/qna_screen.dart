import 'package:app_provincia/services/json_services.dart';
import 'package:flutter/material.dart';
import '../models/qna_models.dart';

class QnaScreen extends StatelessWidget {
  const QnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: JsonServices().getQuestions(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<QNA> qnaData = snapshot.data!;

          return ListView.builder(
              itemCount: qnaData.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Color(0xFFF30B92),
                  margin: EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: [
                      Container(
                        child: ListTile(
                          leading: Icon(
                            Icons.add_location_alt,
                            color: Color.fromARGB(255, 247, 246, 246),
                          ),
                          title: Text(
                            '${qnaData[index].provincia!.toString().toUpperCase()}',
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 246, 246),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '${qnaData[index].extensao!} - ${qnaData[index].municipio!} municípios',
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
                      )
                    ],
                  ),
                );
              });
        }
        return CircularProgressIndicator();
      }),
    );
  }
}
