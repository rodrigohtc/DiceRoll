import 'package:first_app/Subview/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App de Dados'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        body: GradientContainer(),
      ),
    );
  }
}