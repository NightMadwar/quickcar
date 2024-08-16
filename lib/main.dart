import 'package:flutter/material.dart';
import 'features/authentication/presentation/pages/login_page.dart';
import 'injection_container.dart';

void main() {
  init(); // Ensure you call the dependency injection setup
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoRent',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}
