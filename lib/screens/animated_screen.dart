import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape(){
    final rd = Random();
    setState(() {
      _width = rd.nextInt(300).toDouble()+70;
      _height = rd.nextInt(300).toDouble()+70;
      _color = Color.fromRGBO(
        rd.nextInt(255), 
        rd.nextInt(255), 
        rd.nextInt(255), 
        1);
      _borderRadiusGeometry = BorderRadius.circular(rd.nextInt(255).toDouble()+10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadiusGeometry

            ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outlined, size: 40,),
        onPressed: changeShape
      ),
    );
  }
}