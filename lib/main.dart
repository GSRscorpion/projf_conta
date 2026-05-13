import 'package:flutter/material.dart';
import 'package:projf_conta/homepage.dart';

void main() {
  runApp(Appconta());
}

class Appconta extends StatelessWidget {
  const Appconta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Homepage(),
    );
  }
}