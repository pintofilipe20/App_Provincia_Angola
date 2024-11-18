/*class QNA {
  String? provincia;

  QNA({this.provincia});

  QNA.fromJson(Map<String, dynamic> jsonData) {
    provincia = jsonData['provincia'];
  }
}`*/
class QNA {
  final String provincia;
  final String extensao;
  final String municipio;

  QNA(
      {required this.provincia,
      required this.extensao,
      required this.municipio});

  factory QNA.fromJson(Map<String, dynamic> jsonData) {
    return QNA(
      provincia: jsonData['provincia'],
      extensao: jsonData['extensao'],
      municipio: jsonData['municipio'],
    );
  }
}
