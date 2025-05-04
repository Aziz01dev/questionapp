import 'package:flutter/material.dart';
import 'package:questionapp/home/newpages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Newpages());
  }
}
