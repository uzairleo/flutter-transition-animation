import 'package:flutter/cupertino.dart';

class BouncingRoute extends PageRouteBuilder {
  Widget routeWidget;
  BouncingRoute({this.routeWidget})
      : super(
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animatin,
                Animation<double> secondaryanimation,
                Widget child) {
                  animatin=CurvedAnimation(
                    parent:animatin, curve: Curves.elasticInOut);
              return ScaleTransition(
                scale: animatin,
                child: child,
                alignment: Alignment.bottomCenter,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animatin,
                Animation<double> secondaryanimation) {
              return routeWidget;
            });
}
