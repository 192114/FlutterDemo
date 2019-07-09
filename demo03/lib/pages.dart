import 'package:flutter/material.dart';
import './custom_route.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Fist Page',
          style: TextStyle(fontSize: 36.0),
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0, // 去掉导航栏下边的阴影
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0,),
          onPressed: () {
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('SecondPage', style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.lightGreen,
        leading: Container(),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
