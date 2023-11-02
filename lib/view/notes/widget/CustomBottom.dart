import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            color: Colors.orange[900], borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Itim',
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
