import 'package:app_teste_atak_2024/pesquisa/pesquisa_model.dart';
import 'package:flutter/material.dart';
import 'package:app_teste_atak_2024/pesquisa/pesquisa_gateway.dart';

class pesquisa_controller extends ChangeNotifier {
  Future<List<ModeloPesquisa>> pesquisar(String query) async {
    try {
      return await pesquisa_gateway.pesquisar(query);
    } catch (e) {
      rethrow;
    }
  }
}
