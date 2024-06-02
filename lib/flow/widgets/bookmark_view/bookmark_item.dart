import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

import '../text_view.dart';


/// The content to the displayed in each PeopleList item
class BookmarkItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();
  final _randomHeight = Random();

  static const int minHeight = 60;
  static const int maxHeight = 250;
  static const double bubbleRoundedRadius = 20;

  BookmarkItem({super.key});

  int getBubbleHeight() => minHeight + _randomHeight.nextInt(maxHeight - minHeight);

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 16.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: profileColor,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextViewMedium(),
                  const SizedBox(height: 16.0),
                  Container(
                    height: getBubbleHeight().toDouble(),
                    decoration: BoxDecoration(
                      color: profileColor.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(bubbleRoundedRadius),
                        bottomRight: Radius.circular(bubbleRoundedRadius),
                        topRight: Radius.circular(bubbleRoundedRadius),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 8.0),
              child: Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
    );
  }
}
