import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/all_products.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/most_popular.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/offer_card.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/product_category.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/user_details_card.dart';
import 'package:ar_products_flutter/presentation/features/widgets/headline.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';

class ProductListScreenBody extends StatelessWidget {
  const ProductListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const sizedBox = SizedBox(height: AppConstants.sizedBoxHeight);
    return ListView(
      physics: const BouncingScrollPhysics(),
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserDetailsCard(),
        sizedBox,
        const HeadLine(title: 'Special Offers'),
        sizedBox,
        const SpecialOfferCard(),
        // const ProductSearchButton(),
        sizedBox,
        HeadLine(title: l10n.categoryText),
        sizedBox,
        const ProductCategory(),
        sizedBox,
        HeadLine(title: l10n.popularText),
        sizedBox,
        const MostPopularProducts(),
        sizedBox,
        HeadLine(title: l10n.productText),
        sizedBox,
        const AllProducts(),
        sizedBox,
      ],
    );
  }
}
