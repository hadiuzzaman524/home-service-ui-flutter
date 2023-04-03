import 'package:ar_products_flutter/presentation/features/product_details/ui/product_details_screen_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.productId,
    required this.title,
    required this.imageUrl,
    required this.subTitle,
  });

  final String productId;
  final String title;
  final String imageUrl;
  final String subTitle;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsScreenBody(
        productId: productId,
        title: title,
        imageUrl: imageUrl,
        subTitle: subTitle,
      ),
    );
  }
}
