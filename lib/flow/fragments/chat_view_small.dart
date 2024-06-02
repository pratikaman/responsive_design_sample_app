import 'package:flutter/material.dart';

import '../res/custom_colors.dart';
import '../widgets/chat_view/chat_list.dart';
import '../widgets/send_widget.dart';

class ChatViewSmall extends StatelessWidget {
  final Color profileIconColor;
  ChatViewSmall(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.blue_gray,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 28,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: ChatList(profileIconColor)),
            SendWidget(),
          ],
        ),
      ),
    );
  }
}
