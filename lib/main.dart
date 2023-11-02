import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:notes_app/controller/getController.dart';
import 'package:notes_app/core/util/style.dart';
import 'package:notes_app/view/Start/Start.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<noteController>(
      init: noteController(),
      builder: (controller) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Start(),
        theme: Style.themdata(isDark: controller.isDark, context: context),
      ),
    );
  }
}
