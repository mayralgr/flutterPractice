import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.purple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _heigth,
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
            duration: Duration(
              seconds: 1
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _cambiarForma,
          child: Icon(Icons.play_arrow),
          ),
    );
  }


  void _cambiarForma(){
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}