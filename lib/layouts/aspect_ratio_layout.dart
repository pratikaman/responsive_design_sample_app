import 'package:flutter/material.dart';
import 'package:fraction/fraction.dart';
import 'package:responsive_design_sample_app/layouts/res/my_colors.dart';

class AspectRatioLayout extends StatelessWidget {
  const AspectRatioLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatioWidget(ratio: '16 / 9'),
            AspectRatioWidget(ratio: '3 / 2'),
          ],
        ),
      ),
    );
  }
}

class AspectRatioWidget extends StatelessWidget {
  final String ratio;

  const AspectRatioWidget({super.key, required this.ratio});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Fraction.fromString(ratio).toDouble(),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.darkGreen,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'AspectRatio - $ratio',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
