import 'package:flutter/material.dart';
import 'screens/main_page.dart';
import 'package:proactivirus/screens/centro_salud__page.dart';
import 'package:proactivirus/screens/entretenimiento_page.dart';
import 'package:proactivirus/screens/noticias_page.dart';
import 'package:proactivirus/screens/actividades_casa_page.dart';
import 'package:proactivirus/screens/estadisticas_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepPurpleAccent,
      ),
      initialRoute: '/mainPage',
      routes: {
        '/mainPage': (context) => MainPage(),
        '/saludPage': (context) => SaludPage(),
        '/entretenimientoPage': (context) => EntretenimientoPage(),
        '/noticiasPage': (context) => NoticiasPage(),
        '/casaPage': (context) => CasaPage(),
        '/estadisticasPage': (context) => EstadisticasPage(),
      },
    );
  }
}
