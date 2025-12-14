// ApiServices sera une classe singleton car elle ne pourra être instancié qu'une seule fois
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();

  ApiServices._internal(); // C'est un constructeur privé

  // factory (si j'ai bien compris) permet d'instancier la classe une seule fois
  // et si les deux instances sont crées, il pointent vers la même adresse, la seule
  factory ApiServices() => _singleton;

  // une fonction asynchrone qui retourne un résultat est dit future
  Future<dynamic> getData (String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw ("Erreur de chergement : code : ${response.statusCode}. Raison : ${response.reasonPhrase}");
      }
    } catch (e, stackTrace) {
      print("$e ---- $stackTrace");
    }
  }
}