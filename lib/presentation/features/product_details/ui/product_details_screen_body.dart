import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/widgets/app_button.dart';
import 'package:ar_products_flutter/presentation/features/widgets/back_button.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:ar_products_flutter/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreenBody extends StatelessWidget {
  const ProductDetailsScreenBody({
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
    final l10n = context.l10n;
    const sizedBox = SizedBox(height: AppConstants.sizedBoxHeight);
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 340,
              child: Hero(
                tag: productId,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(
                  AppConstants.padding,
                ),
                decoration: BoxDecoration(
                  color: context.colors.backgroundColorWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppConstants.borderRadius),
                    topRight: Radius.circular(AppConstants.borderRadius),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.heading1(text: title),
                    const ListTile(
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              NetworkImage(DummyAssetPath.avaterImageUrl)),
                      title: Text('Owned by Bessie Cooper'),
                      subtitle: Text('4.8/ (65 reviews)'),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Dallas, Texas, USA'),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        r'20$',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    AppText.bodyNormal(text: subTitle),
                    sizedBox,
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDCDAFF),
                            ),
                            child: const Text(
                              'Message',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff593EFC),
                            ),
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    sizedBox,
                  ],
                ),
              ),
            )
          ],
        ),
        const AppBackButton(),
      ],
    );
  }
}
