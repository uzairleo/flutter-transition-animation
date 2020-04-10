import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/Bouncing_Route.dart';


class BouncingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child:RaisedButton(
          onPressed:(){
            Navigator.of(context).push(BouncingRoute(routeWidget:Screen2()));
          },
          child:Text("BouncingTransition"),
        ),
      ),
    );
  }
}