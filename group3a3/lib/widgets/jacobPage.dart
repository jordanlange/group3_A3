import 'package:flutter/material.dart';
import 'package:group3a3/main.dart';

class JacobPage extends StatefulWidget {
  const JacobPage({ Key? key }) : super(key: key);

  @override
  _JacobPageState createState() => _JacobPageState();
}

class _JacobPageState extends State<JacobPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Center(
            child: AppBar(
              backgroundColor: Colors.orange,
              title: Text("Jacob's Page"),
            ),
          ),
          Padding
            (padding: const EdgeInsets.all(20),
            child: Text(
              "Jacob enjoys card games.",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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