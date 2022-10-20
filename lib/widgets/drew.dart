import 'package:flutter/material.dart';
import 'package:group3a3/main.dart';

class drew extends StatefulWidget {
  const drew({super,key});

  @override
  State<drew> createState() => _drewState();
}

class _drewState extends State<drew> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.green,
              title: Text("Drew's Page"),
            ),
          ),
          Padding
            (padding: const EdgeInsets.all(27),
            child: Text(
              "Drew has four adult children.",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
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
