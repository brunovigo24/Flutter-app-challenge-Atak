import 'package:app_teste_atak_2024/usuario/usuario_model.dart';
import 'package:flutter/material.dart';

class UsuarioController extends ChangeNotifier {
  UsuarioModelo? _usuarioLogado;

  get usuarioLogado => _usuarioLogado;

  Future<bool> login(String usuario, String senha) async {
    if (usuario == "admin" && senha == "mestre") {
      _usuarioLogado = UsuarioModelo(usuario, senha);
      notifyListeners();
    }
    return _usuarioLogado != null;
  }
}
