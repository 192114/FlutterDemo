import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {

  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _creamentCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('点一次增加1'),
          Text('$_counter', style: Theme.of(context).textTheme.display1,)
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: _creamentCounter,
        tooltip: 'Increament',
        child: Icon(Icons.add),
      ),
    );
  }
}