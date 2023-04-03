import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:ar_products_flutter/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productId,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  final String productId;
  final String imageUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 1.7;
    final l10n = context.l10n;
    return Hero(
      tag: productId,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.borderRadius),
          ),
        ),
        child: InkWell(
          onTap: () {
            context.pushRoute(
              ProductDetailsRoute(
                productId: productId,
                title: title,
                imageUrl: imageUrl,
                subTitle: subTitle,
              ),
            );
          },
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppConstants.borderRadius),
                      topRight: Radius.circular(AppConstants.borderRadius),
                    ),
                    child:CachedNetworkImage(
                      height: 160,
                      width: width,
                      fit: BoxFit.cover,
                      imageUrl: imageUrl,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.heading2(text: title),
                        const SizedBox(height: 4),
                        AppText.bodyNormal(
                          text: subTitle,
                          maxLine: 3,
                          textAlign: TextAlign.left,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
                        AppText.buttonText(text: l10n.viewDetailsButtonText),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
