import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/state.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/product_card.dart';
import 'package:ar_products_flutter/presentation/features/widgets/all_product_shimmer.dart';
import 'package:ar_products_flutter/presentation/features/widgets/category_shimmer.dart';
import 'package:ar_products_flutter/presentation/features/widgets/product_shimmer.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.padding,
        right: AppConstants.padding,
      ),
      child: BlocBuilder<FetchProductCubit, FetchProductState>(
        builder: (context, state) {
          if (state is AllProductLoaded) {
            final len = state.allProductList.length;
            if (len < 1) {
              return Center(
                child: AppText.bodyNormal(text: l10n.noDataText),
              );
            }
            return GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 3 / 6.2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: List.generate(
                len,
                (index) => ProductCard(
                  productId: 'allProduct${state.allProductList[index].id}',
                  imageUrl: state.allProductList[index].imageUrl,
                  title: state.allProductList[index].title,
                  subTitle: state.allProductList[index].description,
                ),
              ),
            );
          }
          return const AllProductShimmer();
        },
      ),
    );
  }
}
