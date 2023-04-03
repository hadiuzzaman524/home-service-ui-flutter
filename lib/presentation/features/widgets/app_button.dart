import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: context.colors.buttonColor,
      minimumSize: const Size(double.infinity, 48),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(AppConstants.borderRadius * 2)),
      ),
    );
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onTap,
      child: Text(title),
    );
  }
}
