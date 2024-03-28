import 'package:flutter/material.dart';
import 'package:app_teste_atak_2024/pesquisa/pesquisa_model.dart';

class lista_list extends StatelessWidget {
  final List<ModeloPesquisa> resultados;

  const lista_list({required this.resultados});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: resultados.length,
      itemBuilder: (context, index) {
        final resultado = resultados[index];
        return ListTile(
          title: Text(resultado.titulo),
          subtitle: Text(resultado.link),
        );
      },
    );
  }
}
