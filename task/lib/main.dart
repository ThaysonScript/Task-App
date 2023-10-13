import 'package:flutter/material.dart';
import 'package:task/views/login_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget> [
          LoginView(),
        ],
      ),
    );
  }
}
