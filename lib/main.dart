import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 50, 14, 113),
          Color.fromARGB(255, 104, 41, 213),
        ),
      ),
    ),
  );
}
