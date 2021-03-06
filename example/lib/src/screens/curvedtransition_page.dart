import 'package:flutter/material.dart';

import 'package:frideos/frideos.dart';

class CurvedTransitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _firstChild() {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5, 1.0],
            colors: [
              Colors.blue[900],
              Colors.blue[600],
              Colors.blue[300],
            ],
          ),
        ),
      );
    }

    _secondChild() {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('CurvedTransition', style: TextStyle(fontSize: 34.0)),
            FlutterLogo(
              size: 192.0,
            ),
            Container(
              height: 12.0,
            )
          ]);
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('CurvedTransition'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: CurvedTransition(
            firstWidget: _firstChild(),
            secondWidget: _secondChild(),
            transitionDuration: 4000,
            curve: Curves.bounceInOut,
          ),
        ),
      ),
    );
  }
}
