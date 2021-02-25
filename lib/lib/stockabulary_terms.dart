import 'package:flutter/material.dart';

class Stockabulary_Terms extends StatelessWidget{
  final datas;

  const Stockabulary_Terms({Key key,@required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(datas["Term"]),
    backgroundColor: Colors.teal,
    elevation: 0.0,
    ),
    body: Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
      Hero(
      tag: datas["Term"],
      child: SizedBox(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
      radius:100.0,
      backgroundImage: NetworkImage(datas["Image"],
      ),
      ),
      ),
      ),
      ),
      SizedBox(height: 30.0,
      ),
      Text("Term: ${datas["Term"]} ",
      style: TextStyle(
      fontSize: 22,
      color: Colors.black,
      ),
      ),
      SizedBox(height: 30.0,
      ),
      Text("Definition: ${datas["Definition"]} ",
      style: TextStyle(
      fontSize: 22,
      color: Colors.black,
      ),
      ),

      SizedBox(height: 30.0,
      ),
      ],
      ),
      ),
    ),
    ),
    );
  }
}