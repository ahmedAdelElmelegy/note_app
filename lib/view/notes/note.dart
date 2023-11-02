import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controller/getController.dart';
import 'package:notes_app/core/util/IconBroken.dart';
import 'package:notes_app/core/util/const.dart';
import 'package:notes_app/core/widget/CustomText.dart';
import 'package:notes_app/view/notes/widget/CustomAppBar.dart';
import 'package:notes_app/view/notes/widget/CustomBottom.dart';
import 'package:notes_app/view/notes/widget/CustomItem.dart';
import 'package:notes_app/view/notes/widget/CustomTextFormFiled.dart';
import 'package:notes_app/view/notes/widget/showBottomSheet.dart';

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
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: CustomAppBar(
                  onPressed: () {
                    controller.setTheme();
                  },
                  icon: controller.isDark
                      ? const Icon(Icons.dark_mode_sharp)
                      : const Icon(Icons.light_mode_rounded),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => const CustomItem(),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) =>
                  SingleChildScrollView(child: const ShowBottomSheet()),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
