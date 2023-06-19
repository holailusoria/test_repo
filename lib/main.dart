import 'package:flutter/material.dart';
import 'package:test_app/core/color_generator.dart';

void main() {
  runApp(const MyApp());
}

/// entry point for test application
class MyApp extends StatelessWidget {
  ///default constructor
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Test Page'),
    );
  }
}

///main page for test application
class MyHomePage extends StatefulWidget {
  ///default constructor
  const MyHomePage({super.key, required this.title});

  ///title for application bar
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? _currentColor;
  static const double _borderRadius = 18.0;
  static const double _fontSize = 24.0;

  @override
  void initState() {
    super.initState();
    _currentColor = ColorGenerator.generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: helloThereButton,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(_borderRadius),
                side: const BorderSide(color: Colors.red),
              ),
            ),
            textStyle: MaterialStateTextStyle.resolveWith(
              (states) => const TextStyle(
                fontSize: _fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          child: const Text('Hello there'),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void helloThereButton() {
    setState(() {
      _currentColor = ColorGenerator.generateColor();
    });
  }
}
