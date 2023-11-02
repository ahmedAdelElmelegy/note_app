import 'package:flutter/material.dart';
import 'package:notes_app/core/util/AppColor.dart';

class Style {
  static ThemeData themdata(
      {required bool isDark, required BuildContext context}) {
    return ThemeData(
        scaffoldBackgroundColor:
            isDark ? AppColor.darkScaffoldColor : AppColor.lightScaffoldColor,
        cardColor: isDark ? AppColor.darkCard : AppColor.lightCard,
        appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
              color: isDark ? AppColor.colorTextLight : AppColor.colorTextdark,
            ),
            backgroundColor: isDark
                ? AppColor.darkScaffoldColor
                : AppColor.lightScaffoldColor),
        brightness: isDark ? Brightness.dark : Brightness.light);
  }
}
