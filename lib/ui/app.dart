import 'package:flutter/material.dart';
import 'package:my_pet/ui/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, w) {
        return HomeScreen();
      },
    );
  }
}
