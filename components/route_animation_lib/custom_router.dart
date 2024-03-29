import 'package:flutter/material.dart';

class CustomFadeRoute extends PageRouteBuilder {
  final Widget widget;
  CustomFadeRoute(this.widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              child: child,
            );
          },
        );
}

class CustomScaleRoute extends PageRouteBuilder {
  final Widget widget;
  CustomScaleRoute(this.widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return ScaleTransition(
              scale: Tween(begin: .0, end: 1.0).animate(
                CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              child: child,
            );
          },
        );
}

class CustomMultiAniRoute extends PageRouteBuilder {
  final Widget widget;
  CustomMultiAniRoute(this.widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              child: ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: child,
              ),
            );
          },
        );
}

class CustomSlideRoute extends PageRouteBuilder {
  final Widget widget;
  CustomSlideRoute(this.widget)
      : super(
          transitionDuration: const Duration(seconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset(-1.0, 0.0),
                end: Offset(0.0, 0.0),
              ).animate(
                CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              child: child,
            );
          },
        );
}
