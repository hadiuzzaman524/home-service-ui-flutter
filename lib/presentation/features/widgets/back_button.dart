import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 10,
      child: SafeArea(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(AppConstants.borderRadius * 2),
            ),
            boxShadow: [
              BoxShadow(
                color: context.colors.shadowColor.withOpacity(0.44),
                blurRadius: 6,
                offset: const Offset(4, 8), // Shadow position
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.colors.iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
