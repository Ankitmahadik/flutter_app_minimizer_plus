import 'package:flutter/material.dart';
import 'package:flutter_app_minimizer_plus/flutter_app_minimizer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App Minimizer Plus'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FlutterAppMinimizerPlus.minimizeApp();
            },
            child: const Text('Minimize App'),
          ),
        ),
      ),
    );
  }
}