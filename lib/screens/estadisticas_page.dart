import 'package:flutter/material.dart';

class EstadisticasPage extends StatefulWidget {
  @override
  _EstadisticasPageState createState() => _EstadisticasPageState();
}

class _EstadisticasPageState extends State<EstadisticasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estadisticas'),
        centerTitle: true,
      ),
    );
  }
}
