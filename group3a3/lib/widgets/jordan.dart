import 'package:flutter/material.dart';
import 'package:group3a3/main.dart';

class Jordan extends StatefulWidget {
  const Jordan({super.key});

  @override
  State<Jordan> createState() => _JordanState();
}

class _JordanState extends State<Jordan> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.deepPurple,
              title: Text("Jordan's Page"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Jordan has two dogs: Mabel and Moose.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
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
