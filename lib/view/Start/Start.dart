import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controller/getController.dart';
import 'package:notes_app/core/util/assets.dart';

import 'package:notes_app/core/util/const.dart';
import 'package:notes_app/core/widget/CustomText.dart';

class Start extends GetWidget {
  Start({super.key});
  // bool value = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<noteController>(
      init: noteController(),
      builder: (controller) => Scaffold(
        body: Column(children: [
          SizedBox(
            height: size.height * .06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.image2857317,
                height: size.height * .1,
              ),
              const CustomText(
                text: "Note",
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamilly.itim,
              ),
            ],
          ),
          SizedBox(
            height: size.height * .15,
          ),
          Image.asset(Assets.imageStartimage),
          CustomText(
            text: '>Enter Free Note...... <',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: FontFamilly.chelaone,
          )
        ]),
      ),
    );
  }
}
