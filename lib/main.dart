import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'FancyButton.dart';

void main() => runApp(Buttons());

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) =>
  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Buttons',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
        ),
        body: buttonBody(),
      ),
  );
}

Widget buttonBody() =>
  Container(
    margin: const EdgeInsets.all(10.0),
    child: FancyButton(
      onPressed: () => {},
    ),
  );