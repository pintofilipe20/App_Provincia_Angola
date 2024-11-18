import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/qna_models.dart';

class JsonServices {
  Future<List<QNA>> getQuestions() async {
    final data = await rootBundle.loadString("imagens/dados.json");

    var jsonData = json.decode(data);
    if (jsonData is List) {
      return jsonData.map((e) => QNA.fromJson(e)).toList();
    } else {
      throw Exception('Formato de JSON inesperado');
    }
  }
}
