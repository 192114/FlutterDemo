import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            transitionDuration: Duration(seconds: 1), // 过渡时间
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              return FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(curve: Curves.easeIn, parent: animation1)),
                child: child,
              );
            });
}
