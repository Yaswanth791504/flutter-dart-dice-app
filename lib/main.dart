import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int leftButtonState = 1;
  int rightButtonState = 6;

  void handlebuttonChange() {
    setState(() {
      leftButtonState = Random().nextInt(6) + 1;
      rightButtonState = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: const Text('Home Screen'),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          body: Center(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FilledButton(
                        onPressed: () {
                          handlebuttonChange();
                        },
                        child: Image.asset('images/dice$leftButtonState.png'),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FilledButton(
                        onPressed: () {
                          handlebuttonChange();
                        },
                        child: Image.asset('images/dice$rightButtonState.png'),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
