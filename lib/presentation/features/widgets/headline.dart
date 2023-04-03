import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.padding,
        right: AppConstants.padding,
      ),
      child: Row(
        children: [
          const SizedBox(width: 4),

          AppText.heading1(text: title),
          const Spacer(),
          const Text(
            'See All',
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}
