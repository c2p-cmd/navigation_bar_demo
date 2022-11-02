import 'package:flutter/material.dart';
import 'package:navigation_bar_demo/page0.dart';
import 'package:navigation_bar_demo/page1.dart';
import 'package:navigation_bar_demo/page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [
          const Page0(),
          Navigator(
            onGenerateRoute: (RouteSettings settings) {
              Widget page = const Page1();
              if (settings.name == 'page2') page = const Page2();
              return MaterialPageRoute(builder: (_) => page);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) => setState(() => index = newIndex),
        backgroundColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Page 0'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Page 1&2'),
        ],
      ),
    );
  }
}
