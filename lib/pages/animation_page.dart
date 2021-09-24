import 'dart:math';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}
class _AnimationPageState extends State<AnimationPage> {
  double _width = 100.0;
  double _height = 100.0;
  double _radius = 0.0;
  Color _color = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animatios"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          _width = random.nextInt(300).toDouble();
          _height = random.nextInt(300).toDouble();
          _radius = random.nextInt(300).toDouble();

          _color = Color.fromRGBO(
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
            1

          );

          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(milliseconds: 1500),
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(_radius)
        ),
        
            
            
      ),),
    );
  }
}
