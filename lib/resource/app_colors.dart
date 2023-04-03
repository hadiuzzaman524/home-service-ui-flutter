import 'package:flutter/material.dart';

class AppColor {
  AppColor({
    required this.userNameColor,
    required this.searchButtonColor,
    required this.iconColor,
    required this.searchTextColor,
    required this.headingTextColor,
    required this.textColor,
    required this.buttonColor,
    required this.transparentColor,
    required this.scaffoldBackgroundColor,
    required this.shadowColor,
    required this.primaryColor,
    required this.backgroundColorWhite,
    required this.selectedCardColor,
    required this.shimmerBaseColor,
    required this.shimmerHighlightColor,
  });

  final Color userNameColor;
  final Color searchButtonColor;
  final Color iconColor;
  final Color searchTextColor;
  final Color headingTextColor;
  final Color textColor;
  final Color buttonColor;
  final Color transparentColor;
  final Color scaffoldBackgroundColor;
  final Color shadowColor;
  final Color primaryColor;
  final Color backgroundColorWhite;
  final Color selectedCardColor;
  final Color shimmerBaseColor;
  final Color shimmerHighlightColor;
}

extension BuildContextExtension on BuildContext {
  AppColor get colors {
    final lightThemeColor = AppColor(
      userNameColor: Colors.blue,
      searchButtonColor: Colors.white,
      iconColor: const Color(0xff348BA7),
      searchTextColor: Colors.black38,
      headingTextColor: const Color(0xff2E4B55),
      textColor: Colors.black45,
      //const Color(0xffB9B9B9),
      buttonColor: const Color(0xff348BA7),
      transparentColor: Colors.transparent,
      scaffoldBackgroundColor: const Color(0xffF8F8F8),
      shadowColor: Colors.grey,
      primaryColor: const Color(0xFF13B9FF),
      backgroundColorWhite: Colors.white,
      selectedCardColor: const Color(0xffCFE9F4),
      shimmerBaseColor: const Color(0xffd2d1d1),
      shimmerHighlightColor: const Color(0xffeeeeee),
    );

    final darkThemeColor = AppColor(
      userNameColor: Colors.blue,
      searchButtonColor: Colors.white,
      iconColor: const Color(0xff348BA7),
      searchTextColor: Colors.black38,
      headingTextColor: const Color(0xff2E4B55),
      textColor: Colors.black45,
      buttonColor: const Color(0xff348BA7),
      transparentColor: Colors.transparent,
      scaffoldBackgroundColor: const Color(0xffF8F8F8),
      shadowColor: Colors.grey,
      primaryColor: const Color(0xFF13B9FF),
      backgroundColorWhite: Colors.white,
      selectedCardColor: const Color(0xffCFE9F4),
      shimmerBaseColor: const Color(0xffd2d1d1),
      shimmerHighlightColor: const Color(0xffeeeeee),
    );
    return isDarkMode ? darkThemeColor : lightThemeColor;
  }

  bool get isDarkMode {
    return false;
  }
}
