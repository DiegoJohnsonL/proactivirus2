import 'package:flutter/material.dart';

class CasaPage extends StatefulWidget {
  @override
  _CasaPageState createState() => _CasaPageState();
}

class _CasaPageState extends State<CasaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CENTRO DE SALUD'),
        centerTitle: true,
      ),
    );
  }
}
