import 'package:flutter/material.dart';
import 'package:notes_app/core/widget/CustomText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onPressed,
    required this.icon,
  });
  final void Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomText(
          text: "Note",
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontFamily: 'GFSNeohellenic',
        ),
        const Spacer(),
        IconButton(onPressed: onPressed, icon: icon)
      ],
    );
  }
}
