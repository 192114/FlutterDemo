import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              // 渐隐渐现
              // return FadeTransition(
              //   opacity: Tween(begin: 0.0, end: 1.0).animate(
              //       CurvedAnimation(curve: Curves.easeIn, parent: animation1)),
              //   child: child,
              // );
              // 缩放
              // return ScaleTransition(
              //   scale: Tween(begin: 0.0, end: 1.0).animate(
              //     CurvedAnimation(curve: Curves.easeIn, parent: animation1),
              //   ),
              //   child: child, // 用作动画效果叠加
              // );
              // 旋转加缩放
              // return RotationTransition(
              //   turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       curve: Curves.fastOutSlowIn, parent: animation1)),
              //   child: ScaleTransition(
              //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //         curve: Curves.fastOutSlowIn, parent: animation1)),
              //     child: child,
              //   ),
              // );

              return SlideTransition(
                position: Tween<Offset>(
                        begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        curve: Curves.fastOutSlowIn, parent: animation1)),
                child: child,
              );
            });
}
