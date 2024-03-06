import 'package:flutter/material.dart';
import 'package:cube_project/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromRGBO(13, 1, 39, 1),
          const Color.fromRGBO(46, 37, 79, 0.831),
          const Color.fromRGBO(13, 1, 39, 1),
        ),
      ),
    ),
  );
}
