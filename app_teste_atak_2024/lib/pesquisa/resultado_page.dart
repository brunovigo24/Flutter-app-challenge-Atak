import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  final String result;

  const ResultadoPage({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Text(result),
      ),
    );
  }
}
