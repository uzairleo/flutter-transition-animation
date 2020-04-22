import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_transition/screens/Bouncing_Screen.dart';
import 'package:route_transition/screens/SlideScreen.dart';
import 'package:route_transition/screens/fade_screen.dart';
import 'package:route_transition/screens/random_screen.dart';
import 'package:route_transition/screens/rotation_screen.dart';
import 'package:route_transition/screens/scale_screen.dart';
import 'package:route_transition/screens/size_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Route Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'SlideTransition': SlideScreen(),//the string will work for us as a text while the widget will for us as the route widget
    'ScaleTransition': ScaleScreen(),
    'RotationTransition': RotationScreen(),
    'SizeTransition': SizeScreen(),
    'FadeTransition': FadeScreen(),
    'Random': RandomScreen(),
    'BouncingTransition': BouncingScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:buttons(context),
            
        ),
      ),
    );
  }

  List<RaisedButton> buttons(var context) {
    List<RaisedButton> buttons = List<RaisedButton>();
    screens.forEach(//this will add all the 7 raised button to the button list and then return it 
      (widgetName, routeWidget) {//this loop will depend on map elements suppose having 
        buttons.add(//        2 elements in the maps then loop for each will run two time and vice versa
          RaisedButton(
            child: Text(widgetName),
            onPressed: () => Navigator.push(
                context, CupertinoPageRoute(
                  builder: (context) => routeWidget)),
          ),
        );
      },
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
