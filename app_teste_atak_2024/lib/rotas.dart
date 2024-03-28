import 'dart:js';
import 'package:app_teste_atak_2024/pesquisa/pesquisa_form.dart';
import 'package:app_teste_atak_2024/usuario/login_form.dart';
import 'package:flutter/material.dart';

class Rotas {
  //Rotas principais
  static const String LOGIN = '/login';
  static const String PESQUISA = '/search';

  //Mapeamento de rotas para telas
  static Map<String, WidgetBuilder> widgetsMap() {
    return {
      PESQUISA: (context) => PesquisaForm(),
      LOGIN: (context) => const LoginForm(),
    };
  }
}
