import 'package:ar_products_flutter/presentation/features/product_details/product_details_screen.dart';
import 'package:ar_products_flutter/presentation/features/product_list/product_list_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ProductListScreen, initial: true),
    AutoRoute(page: ProductDetailsScreen),
  ],
)
class AppRouter extends _$AppRouter {}
