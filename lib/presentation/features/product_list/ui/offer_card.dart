import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../resource/constants.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConstants.padding,
        right: AppConstants.padding,
      ),
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(AppConstants.padding),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [
              Color(0xff6A3F69),
              Color(0xffE3BDDC),
              Color(0xff7447CF),
              Color(0xff24192E),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.borderRadius * 2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  '30%',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff593EFC),
                  ),
                  child: const Text('Explore Offer'),
                )
              ],
            ),
            const Text(
              "Today's Special",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'Get a discount for every order today',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
