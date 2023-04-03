import 'package:ar_products_flutter/presentation/features/product_list/ui/product_card.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AllProductShimmer extends StatelessWidget {
  const AllProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.colors.shimmerBaseColor,
      highlightColor: context.colors.shimmerHighlightColor,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 3 / 6.2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(
          4,
          (index) => const ProductCard(
            productId: '',
            imageUrl: DummyAssetPath.avaterImageUrl,
            title: 'state.allProductList[index].title',
            subTitle: 'state.allProductList[index].description',

          ),
        ),
      ),
    );
  }
}
