import 'package:flutter/material.dart';
import '../widgets/contact_view/contact_list.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ContactList(),
    );
  }
}
