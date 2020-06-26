import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/section_button.dart';
import '../widgets/section_icon.dart';
import 'actividades_casa_page.dart';
import 'centro_salud__page.dart';
import 'entretenimiento_page.dart';
import 'estadisticas_page.dart';
import 'noticias_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROACTIVIRUS',
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.1,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // TODO: SETTINGS POP UP
                },
                child: Icon(Icons.settings),
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SectionButton(
                    image: AssetImage('images/sections/salud.jpg'),
                    child: SectionIcon(
                      icon: Icons.accessibility,
                      label: 'CENTRO DE SALUD',
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/saludPage');
                    },
                  ),
                ),
                Expanded(
                  child: SectionButton(
                    image: AssetImage('images/sections/casa.jpeg'),
                    child: SectionIcon(
                      icon: Icons.accessibility,
                      label: 'ACTIVIDADES EN CASA',
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/casaPage');
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SectionButton(
              image: AssetImage('images/sections/estadisticas.jpg'),
              child: SectionIcon(
                icon: Icons.accessibility,
                label: 'ESTADISTICAS',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/estadisticasPage');
              },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SectionButton(
                    image: AssetImage('images/sections/noticias.jpg'),
                    child: SectionIcon(
                      icon: Icons.accessibility,
                      label: 'NOTICIAS',
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/noticiasPage');
                    },
                  ),
                ),
                Expanded(
                  child: SectionButton(
                    image: AssetImage('images/sections/entretenimiento.jpg'),
                    child: SectionIcon(
                      icon: Icons.accessibility,
                      label: 'ENTRETENIMIENTO',
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/entretenimientoPage');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
