import 'package:flutter/material.dart';
import 'package:responsive_design_sample_app/flow/widgets/bookmark_view/bookmark_list.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const BookmarkList(),
    );
  }
}
