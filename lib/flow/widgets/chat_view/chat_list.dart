import 'package:flutter/material.dart';
import 'package:responsive_design_sample_app/flow/widgets/chat_view/chat_item.dart';

class ChatList extends StatelessWidget {
  final Color profileIconColor;
  const ChatList(this.profileIconColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      reverse: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ChatItem(profileIconColor);
      },
    );
  }
}
