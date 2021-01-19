import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerSample extends StatefulWidget {
  @override
  _AnimatedContainerSampleState createState() => _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
    double _width = 50;
    double _height = 50;
    Color _color = Colors.green;
    @override
    Widget build(BuildContext context) {
      BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
      return Scaffold(
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _width,
            height: _height,
            decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      );
    }
}

