import 'package:ar_products_flutter/presentation/features/product_list/ui/product_category_card.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 130,
      child: Shimmer.fromColors(
        baseColor: context.colors.shimmerBaseColor,
        highlightColor: context.colors.shimmerHighlightColor,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (ctx, index) {
            if (index == 0) {
              return Row(
                children: [
                  const SizedBox(width: AppConstants.padding),
                  ProductCategoryCard(
                    small: false,
                    color: Colors.red,
                    icon:Icons.add, //DummyAssetPath.avaterImageUrl,
                    title: 'title',
                    onTap: () {},
                    isSelected: false,
                  ) // runs after the above w/new duration
                ],
              );
            }
            return ProductCategoryCard(
              small: false,
              //iconUrl: DummyAssetPath.avaterImageUrl,
              icon:Icons.add,
              title: 'title',
              onTap: () {},
              isSelected: false, color: Colors.red,
            );
          },
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          },
        ), /*ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, ind) {
            return ProductCategoryCard(
              imageUrl: 'img',
              title: 'title',
              onTap: () {},
              isSelected: false,
            );
          },
          itemCount: 3,
        ),*/
      ),
    );
  }
}
