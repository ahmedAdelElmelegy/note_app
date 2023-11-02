import 'package:flutter/material.dart';
import 'package:notes_app/core/util/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.icon,
      this.controller,
      this.validator,
      this.onChanged,
      this.onFieldSubmitted,
      this.maxLines = 1});
  final String hintText;
  final IconData? icon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
          // prefixIconColor: Colors.grey,
          // prefixIcon: Icon(icon),
          hintStyle: const TextStyle(
              color: Colors.orange,
              // fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: FontFamilly.itim),
          // contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),

          enabledBorder: outLineBorder(Colors.grey),
          border: outLineBorder(Colors.grey),
          focusedBorder: outLineBorder(Colors.orange)),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: color));
  }
}
