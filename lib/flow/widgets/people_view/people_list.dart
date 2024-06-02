import 'package:flutter/material.dart';
import 'package:responsive_design_sample_app/flow/widgets/people_view/people_item.dart';

class PeopleList extends StatelessWidget {
  final bool isNotInChatMode;

  const PeopleList({super.key, required this.isNotInChatMode});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return PeopleItem(
          isNotInChatMode: isNotInChatMode,
        );
      },
    );
  }
}
