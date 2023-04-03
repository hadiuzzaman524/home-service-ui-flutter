import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_category/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_category/state.dart';
import 'package:ar_products_flutter/presentation/features/product_list/cubits/fetch_product/cubit.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/product_category_card.dart';
import 'package:ar_products_flutter/presentation/features/widgets/category_shimmer.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({super.key});

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  bool isSelected = false;
  int ind = -1;

  void filterProductByCategory({
    required BuildContext context,
    required int index,
    required String title,
  }) {
    setState(() {
      isSelected = !isSelected;
      ind = index;
    });
    if (isSelected) {
      /// Filter product by category
      context.read<FetchProductCubit>().fetchAllProduct(category: title);
    } else {
      /// Restore all product
      context.read<FetchProductCubit>().fetchAllProduct(reset: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<FetchCategoryCubit, FetchCategoryState>(
      builder: (context, state) {
        if (state is ProductCategoryLoaded) {
          final categoryList = state.productCategoryList;
          if (categoryList.isEmpty) {
            return Center(
              child: AppText.bodyMedium(text: l10n.noDataText),
            );
          }
          return SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (ctx, index) {
                if (index == 0) {
                  return Row(
                    children: [
                      const SizedBox(width: AppConstants.padding),
                      ProductCategoryCard(
                        color: categoryList[index].color,
                        icon: categoryList[index].iconUrl,
                        title: categoryList[index].title,
                        onTap: () {
                          filterProductByCategory(
                            context: context,
                            index: index,
                            title: categoryList[index].title,
                          );
                        },
                        isSelected: isSelected && ind == index,
                      ) // runs after the above w/new duration
                    ],
                  );
                }
                return ProductCategoryCard(
                  icon: categoryList[index].iconUrl,
                  color: categoryList[index].color,
                  title: categoryList[index].title,
                  onTap: () {
                    filterProductByCategory(
                      context: context,
                      index: index,
                      title: categoryList[index].title,
                    );
                  },
                  isSelected: isSelected && ind == index,
                );
              },
              itemCount: categoryList.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 8);
              },
            ),
          );
        }
        return const SizedBox(
          height: 130,
          child: CategoryShimmer(),
        );
      },
    );
  }
}
