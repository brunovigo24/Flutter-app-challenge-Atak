import 'package:app_teste_atak_2024/rotas.dart';
import 'package:app_teste_atak_2024/usuario/usuario_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SearchController()),
        ChangeNotifierProvider(create: (context) => UsuarioController())
      ],
      child: MaterialApp(
        initialRoute: Rotas.LOGIN,
        //aqui definimos as rotas para todas as telas do app
        routes: Rotas.widgetsMap(),
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.lightBlue,
        ),
      ),
    );
  }
}
