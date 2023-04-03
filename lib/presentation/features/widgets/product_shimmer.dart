import 'package:ar_products_flutter/presentation/features/product_list/ui/product_card.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MostPopularProductShimmer extends StatelessWidget {
  const MostPopularProductShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Shimmer.fromColors(
        baseColor: context.colors.shimmerBaseColor,
        highlightColor: context.colors.shimmerHighlightColor,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (ctx, index) {
            if (index == 0) {
              return Row(
                children: const [
                  SizedBox(width: AppConstants.padding),
                  ProductCard(
                    productId: '1',
                    imageUrl: DummyAssetPath.avaterImageUrl,
                    title: 'mostPopularProductList[index].title',
                    subTitle: 'mostPopularProductList[index].description',
                  )
                ],
              );
            }
            return const ProductCard(
              productId: '1',
              imageUrl: DummyAssetPath.avaterImageUrl,
              title: 'mostPopularProductList[index].title',
              subTitle: 'mostPopularProductList[index].description',
            );
          },
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          },
        ),
      ),
    );
  }
}
