import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:flutter/material.dart';

enum AppTextStyle {
  heading1,
  heading2,
  bodyNormal,
  bodyMedium,
  bodyLarge,
  buttonText,
}

class AppText extends StatelessWidget {
  const AppText._({
    required this.text,
    required this.style,
    this.maxLine,
    this.textAlign,
    this.textOverflow,
  });

  factory AppText.heading1({
    required String text,
    TextOverflow? textOverflow,
    int? maxLine,
    TextAlign? textAlign,
  }) {
    return AppText._(
      text: text,
      style: AppTextStyle.heading1,
      textAlign: textAlign,
      maxLine: maxLine,
      textOverflow: textOverflow,
    );
  }

  factory AppText.heading2({
    required String text,
    TextOverflow? textOverflow,
    int? maxLine,
    TextAlign? textAlign,
  }) {
    return AppText._(
      text: text,
      style: AppTextStyle.heading2,
      textAlign: textAlign,
      maxLine: maxLine,
      textOverflow: textOverflow,
    );
  }

  factory AppText.bodyNormal({
    required String text,
    TextOverflow? textOverflow,
    int? maxLine,
    TextAlign? textAlign,
  }) {
    return AppText._(
      text: text,
      style: AppTextStyle.bodyNormal,
      textAlign: textAlign,
      maxLine: maxLine,
      textOverflow: textOverflow,
    );
  }

  factory AppText.bodyMedium({
    required String text,
    TextOverflow? textOverflow,
    int? maxLine,
    TextAlign? textAlign,
  }) {
    return AppText._(
      text: text,
      style: AppTextStyle.bodyMedium,
      textAlign: textAlign,
      maxLine: maxLine,
      textOverflow: textOverflow,
    );
  }

  factory AppText.buttonText({
    required String text,
    TextOverflow? textOverflow,
    int? maxLine,
    TextAlign? textAlign,
  }) {
    return AppText._(
      text: text,
      style: AppTextStyle.buttonText,
      textAlign: textAlign,
      maxLine: maxLine,
      textOverflow: textOverflow,
    );
  }

  final String text;
  final AppTextStyle style;
  final int? maxLine;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  TextStyle? getTextStyle(BuildContext context) {
    TextStyle? textStyle;
    switch (style) {
      case AppTextStyle.bodyNormal:
        textStyle = TextStyle(
          color: context.colors.textColor,
        );
        break;

      case AppTextStyle.bodyMedium:
        textStyle = TextStyle(
          color: context.colors.textColor,
          fontWeight: FontWeight.bold,
        );
        break;
      case AppTextStyle.bodyLarge:
        textStyle = TextStyle(
          color: context.colors.textColor,
          fontSize: 20,
        );
        break;
      case AppTextStyle.buttonText:
        textStyle = TextStyle(
          color: context.colors.buttonColor,
        );
        break;
      case AppTextStyle.heading1:
        textStyle = TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: context.colors.headingTextColor,
        );
        break;

      case AppTextStyle.heading2:
        textStyle = TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: context.colors.headingTextColor,
        );
        break;
    }

    return textStyle;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = getTextStyle(context);
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverflow,
      style: textStyle,
    );
  }
}
