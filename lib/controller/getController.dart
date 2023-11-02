import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/view/notes/note.dart';
import 'package:shared_preferences/shared_preferences.dart';

class noteController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () => Get.to(Note(), transition: Transition.fade),
    );
  }

  noteController() {
    getTheme();
  }

  bool isDark = false;

  get isDarkThem => isDark;
  bool value = false;
  static const String key = "themeData";
  void setTheme() async {
    value = !value;
    SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setBool(key, value);
    isDark = value;
    update();
  }

  Future<bool> getTheme() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    isDark = shared.getBool(key) ?? false;
    update();
    return isDark;
  }
}
