import 'package:flutter/material.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page0')),
      body: const Center(
        child: Text("Hi this is page0")
      ),
    );
  }
}
