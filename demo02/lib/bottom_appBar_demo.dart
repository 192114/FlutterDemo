import 'package:flutter/material.dart';
import './each_view.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {

  List<Widget> _list = List();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _list..add(EachVeiw('Home'))..add(EachVeiw('Airplay'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return EachVeiw('New page');
          }));
        },
        tooltip: 'tooltip',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // 简写fab
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
              icon: Icon(Icons.airplay, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
