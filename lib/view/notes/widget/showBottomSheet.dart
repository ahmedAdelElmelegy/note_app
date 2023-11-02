import 'package:flutter/material.dart';
import 'package:notes_app/view/notes/widget/CustomBottom.dart';
import 'package:notes_app/view/notes/widget/CustomTextFormFiled.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 5, right: 8, left: 8, bottom: MediaQuery.of(context).size),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: CustomTextField(
              hintText: 'Title',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: CustomTextField(
              hintText: 'Body',
              maxLines: 4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: CustomButton(text: 'Add'),
          ),
        ],
      ),
    );
  }
}
