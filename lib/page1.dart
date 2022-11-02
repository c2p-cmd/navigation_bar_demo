import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'page2'),
          child: const Text('Go to Page2'),
        ),
      ),
    );
  }
}