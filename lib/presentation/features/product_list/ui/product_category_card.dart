import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCategoryCard extends StatelessWidget {
  const ProductCategoryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
    required this.color,
  });

  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final Color color;

  String capitalize(String value) {
    var result = value[0].toUpperCase();
    var cap = true;
    for (var i = 1; i < value.length; i++) {
      if (value[i - 1] == ' ' && cap == true) {
        result = result + value[i].toUpperCase();
      } else {
        result = result + value[i];
        cap = false;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: isSelected
            ? context.colors.selectedCardColor
            : color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.borderRadius),
          ),
        ),
        child: SizedBox(
          height: 130,
          width: 110,
          //padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(icon, size: 50,),
              const SizedBox(height: 8),
              AppText.bodyMedium(text: capitalize(title)),
            ],
          ),
        ),
      ),
    );
  }
}
