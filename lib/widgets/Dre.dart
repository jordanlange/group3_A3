import 'package:flutter/material.dart';
import 'package:group3a3/main.dart';

class Dre extends StatefulWidget {
  const Dre({super.key});

  @override
  State<Dre> createState() => _DreState();
}

class _DreState extends State<Dre> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("LaDre's Page"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "LaDre once persued a degree in Gunsmithing.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              "GOTO Main",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}