// ignore_for_file: use_decorated_box

import 'package:ar_products_flutter/l10n/l10n.dart';
import 'package:ar_products_flutter/resource/app_colors.dart';
import 'package:ar_products_flutter/resource/app_text.dart';

import 'package:ar_products_flutter/resource/constants.dart';
import 'package:flutter/material.dart';

class ProductSearchButton extends StatelessWidget {
  const ProductSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: () {
        ///ToDo: Search Button Action
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff1C1C25),
          borderRadius: BorderRadius.all(
            Radius.circular(AppConstants.borderRadius),
          ),
        ),
        child: ListTile(
          title: Text(
            l10n.searchText,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                fontSize: 18),
          ),
          leading: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          trailing: const Icon(Icons.checklist_rounded, color: Colors.blueAccent),
        ),
      ),
    );
  }
}
