import 'dart:async';
import 'dart:convert';
import 'package:app_teste_atak_2024/pesquisa/pesquisa_model.dart';
import 'package:http/http.dart' as http;

class pesquisa_gateway {
  static const String URL_API = "URL_DA_SUA_API_AQUI";

  static Future<List<ModeloPesquisa>> pesquisar(String query) async {
    final response = await http.get(Uri.parse('$URL_API/search?q=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((item) => ModeloPesquisa.pesquisa_model(
                titulo: item['titulo'],
                link: item['link'],
              ))
          .toList();
    } else {
      throw Exception('Falha ao carregar os resultados da pesquisa');
    }
  }
}
