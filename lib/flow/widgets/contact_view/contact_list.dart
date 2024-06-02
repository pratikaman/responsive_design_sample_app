import 'package:flutter/material.dart';
import 'package:responsive_design_sample_app/flow/widgets/contact_view/contact_item.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ContactItem();
      },
    );
  }
}
