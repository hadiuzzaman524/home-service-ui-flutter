import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/state.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/product_card.dart';
import 'package:ar_products_flutter/presentation/features/widgets/category_shimmer.dart';
import 'package:ar_products_flutter/presentation/features/widgets/product_shimmer.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostPopularProducts extends StatelessWidget {
  const MostPopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<FetchProductCubit, FetchProductState>(
      builder: (context, state) {
        if (state is AllProductLoaded) {
          final mostPopularProductList = state.allProductList
              .where(
                (element) => element.isMostPopular == true,
              )
              .toList();
          if (mostPopularProductList.isEmpty) {
            return Center(
              child: AppText.bodyNormal(text: l10n.noDataText),
            );
          }
          return SizedBox(
            height: 350,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (ctx, index) {
                if (index == 0) {
                  return Row(
                    children: [
                      const SizedBox(width: AppConstants.padding),
                      ProductCard(
                        productId:
                            'MostPopular${mostPopularProductList[index].id}',
                        imageUrl: mostPopularProductList[index].imageUrl,
                        title: mostPopularProductList[index].title,
                        subTitle: mostPopularProductList[index].description,
                      )
                    ],
                  );
                }
                return ProductCard(
                  productId: 'MostPopular${mostPopularProductList[index].id}',
                  imageUrl: mostPopularProductList[index].imageUrl,
                  title: mostPopularProductList[index].title,
                  subTitle: mostPopularProductList[index].description,
                );
              },
              itemCount: mostPopularProductList.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 8);
              },
            ),
          );
        }
        return const MostPopularProductShimmer();
      },
    );
  }
}
