import 'package:flutter/material.dart';

class SaludPage extends StatefulWidget {
  @override
  _SaludPageState createState() => _SaludPageState();
}

enum Tab { vision, sintomas, prevencion }

class _SaludPageState extends State<SaludPage> {
  Tab selectedIcon = Tab.vision;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centro De Salud'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Expanded(
                  flex: 6,
                  child: TabIcon(
                    label: 'Vision General',
                    image: AssetImage('images/icons/vision_general.png'),
                    onTap: () {
                      setState(() {
                        selectedIcon = Tab.vision;
                      });
                    },
                    visible: selectedIcon == Tab.vision ? true : false,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: TabIcon(
                    label: 'Síntomas',
                    image: AssetImage('images/icons/sintomas.png'),
                    onTap: () {
                      setState(() {
                        selectedIcon = Tab.sintomas;
                      });
                    },
                    visible: selectedIcon == Tab.sintomas ? true : false,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: TabIcon(
                    label: 'Prevencíon',
                    image: AssetImage('images/icons/prevencion.jpg'),
                    onTap: () {
                      setState(() {
                        selectedIcon = Tab.prevencion;
                      });
                    },
                    visible: selectedIcon == Tab.prevencion ? true : false,
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}

class TabIcon extends StatelessWidget {
  TabIcon({this.image, this.visible, this.label, this.onTap});

  final Function onTap;
  final AssetImage image;
  final String label;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 22.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundImage: image,
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.blueGrey.shade900,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5.0,
              width: label.length.toDouble() * 7.5,
              child: Visibility(
                visible: visible,
                child: Divider(
                  color: Colors.deepPurpleAccent,
                  thickness: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
