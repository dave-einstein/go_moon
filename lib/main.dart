import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Moon',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 0.5)),
      home: HomePage(),
    );
  }
}
