import 'package:flutter/material.dart';

import '../fragments/home_view_large.dart';
import '../fragments/home_view_small.dart';

class FlowHomePage extends StatefulWidget {
  const FlowHomePage({super.key});

  @override
  _FlowHomePageState createState() => _FlowHomePageState();
}

class _FlowHomePageState extends State<FlowHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return HomeViewSmall(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          } else {
            return HomeViewLarge(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          }
        },
      ),
    );
  }
}
