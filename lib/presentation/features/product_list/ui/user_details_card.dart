import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/presentation/features/product_list/ui/search_button.dart';
import 'package:ar_products_flutter/resource/app_text.dart';
import 'package:ar_products_flutter/resource/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserDetailsCard extends StatelessWidget {
  const UserDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.padding,
        right: AppConstants.padding,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff1C1C25),
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.borderRadius * 2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            AppConstants.padding,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppConstants.borderRadius),
                      ),
                      child: CachedNetworkImage(
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        imageUrl: DummyAssetPath.avaterImageUrl,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.welcomeText,
                          style: const TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        const Text(
                          DummyAssetPath.personName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.notification_important_rounded,
                      color: Colors.white70,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.bookmark,
                      color: Colors.white70,
                    ),
                  ],
                ),
              ),
              const ProductSearchButton(),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
