import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controller/getController.dart';
import 'package:notes_app/core/util/const.dart';
import 'package:notes_app/core/widget/CustomText.dart';

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<noteController>(
      init: noteController(),
      builder: (controller) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .04,
              ),
              Row(
                children: [
                  const CustomText(
                    text: "Note",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GFSNeohellenic',
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        controller.setTheme();
                      },
                      icon: controller.isDark
                          ? Icon(Icons.dark_mode_sharp)
                          : Icon(Icons.light_mode_rounded))
                ],
              ),
              CustomItem()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            title: CustomText(
              text: 'Ahmed Adel',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: FontFamilly.itim,
            ),
            subtitle: CustomText(
              text: 'hellow in my note app',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
