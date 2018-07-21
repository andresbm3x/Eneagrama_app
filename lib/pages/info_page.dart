import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => new _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionTile(
          title: Text(
            "Qué es el eneagrama?",
            softWrap: true,
            style: TextStyle(fontSize: 20.0),
          ),
          children: <Widget>[
            Container(
              height: 150.0,
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color>[Colors.red, Colors.white],
                  stops: [0.0, 0.9],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "El eneagrama se basa en 9 eneatipos diferentes con los que se puede reconocer la personalidad de una persona.",
                softWrap: true,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Qué són los eneatipos?",
            softWrap: true,
            style: TextStyle(fontSize: 20.0),
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "El eneagrama se basa en 9 eneatipos diferentes con los que se puede reconocer la personalidad de una persona.",
                softWrap: true,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "Cual és el propósito del test?",
            softWrap: true,
            style: TextStyle(fontSize: 20.0),
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "El eneagrama se basa en 9 eneatipos diferentes con los que se puede reconocer la personalidad de una persona.",
                softWrap: true,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
