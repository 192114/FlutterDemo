import 'package:flutter/material.dart';

class EachVeiw extends StatefulWidget {
  String _title;
  EachVeiw(this._title);
  @override
  _EachVeiwState createState() => _EachVeiwState();
}

class _EachVeiwState extends State<EachVeiw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
